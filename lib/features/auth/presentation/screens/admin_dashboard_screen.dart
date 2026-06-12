import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../dashboard/presentation/screens/dashboard_screen.dart';
import 'package:flutter/material.dart';

class AdminDashboardScreen extends StatelessWidget {
  const AdminDashboardScreen({super.key});

  Future<String> getUserName(String userId) async {
    try {
      final doc = await FirebaseFirestore.instance
          .collection('users')
          .doc(userId)
          .get(const GetOptions(source: Source.serverAndCache));
      return doc.data()?['name'] ?? 'Unknown User';
    } catch (e) {
      try {
        final doc = await FirebaseFirestore.instance
            .collection('users')
            .doc(userId)
            .get(const GetOptions(source: Source.cache));
        return doc.data()?['name'] ?? 'Unknown User';
      } catch (_) {
        return 'Unknown User';
      }
    }
  }

  Future<String> getServiceName(String serviceId) async {
    try {
      final doc = await FirebaseFirestore.instance
          .collection('services')
          .doc(serviceId)
          .get(const GetOptions(source: Source.serverAndCache));
      return doc.data()?['name'] ?? 'Unknown Service';
    } catch (e) {
      try {
        final doc = await FirebaseFirestore.instance
            .collection('services')
            .doc(serviceId)
            .get(const GetOptions(source: Source.cache));
        return doc.data()?['name'] ?? 'Unknown Service';
      } catch (_) {
        return 'Unknown Service';
      }
    }
  }

  DateTime parseDate(String date) {
    return DateTime.parse(date);
  }

  @override
  Widget build(BuildContext context) {
    final bookingsStream = FirebaseFirestore.instance
        .collection('bookings')
        .orderBy('scheduledAt', descending: true)
        .snapshots();

    return Scaffold(
      appBar: AppBar(title: const Text("Admin Dashboard 👑")),
      body: StreamBuilder<QuerySnapshot>(
        stream: bookingsStream,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return const Center(child: Text("No bookings found"));
          }

          final bookings = snapshot.data!.docs;

          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: bookings.length,
                  itemBuilder: (context, index) {
                    final doc = bookings[index];
                    final data = doc.data() as Map<String, dynamic>;

                    final userId = data['userId'];
                    final serviceId = data['serviceId'];
                    final status = data['status'];
                    final scheduledAt = data['scheduledAt'];

                    return Card(
                      margin: const EdgeInsets.all(12),
                      elevation: 3,
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: FutureBuilder(
                          future: Future.wait([
                            getUserName(userId),
                            getServiceName(serviceId),
                          ]),
                          builder: (context, AsyncSnapshot<List<dynamic>> snap) {
                            if (!snap.hasData) {
                              return const SizedBox(
                                height: 80,
                                child: Center(
                                  child: CircularProgressIndicator(),
                                ),
                              );
                            }

                            final userName = snap.data![0];
                            final serviceName = snap.data![1];

                            final date = parseDate(scheduledAt);

                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "👤 User: $userName",
                                  style: const TextStyle(fontSize: 16),
                                ),
                                const SizedBox(height: 8),

                                Text(
                                  "🏥 Service: $serviceName",
                                  style: const TextStyle(fontSize: 16),
                                ),
                                const SizedBox(height: 8),

                                Text(
                                  "🕒 Time: ${date.toLocal()}",
                                  style: const TextStyle(fontSize: 14),
                                ),
                                const SizedBox(height: 8),

                                Text(
                                  "Status: $status",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: status == 'confirmed'
                                        ? Colors.green
                                        : status == 'cancelled'
                                        ? Colors.red
                                        : Colors.orange,
                                  ),
                                ),

                                const SizedBox(height: 12),

                                if (status == 'pending')
                                  Row(
                                    children: [
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.green,
                                        ),
                                        onPressed: () async {
                                          await FirebaseFirestore.instance
                                              .collection('bookings')
                                              .doc(doc.id)
                                              .update({'status': 'confirmed'});

                                          await FirebaseFirestore.instance
                                              .collection('notifications')
                                              .add({
                                                'userId': userId,
                                                'title': 'Booking Accepted',
                                                'body':
                                                    'Your booking has been accepted successfully.',
                                                'createdAt':
                                                    FieldValue.serverTimestamp(),
                                                'isRead': false,
                                              });

                                          if (!context.mounted) return;
                                          ScaffoldMessenger.of(
                                            context,
                                          ).showSnackBar(
                                            const SnackBar(
                                              content: Text('Booking accepted'),
                                            ),
                                          );
                                        },
                                        child: const Text('Accept'),
                                      ),
                                      const SizedBox(width: 10),

                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.red,
                                        ),
                                        onPressed: () async {
                                          await FirebaseFirestore.instance
                                              .collection('bookings')
                                              .doc(doc.id)
                                              .update({'status': 'cancelled'});

                                          await FirebaseFirestore.instance
                                              .collection('notifications')
                                              .add({
                                                'userId': userId,
                                                'title': 'Booking Rejected',
                                                'body':
                                                    'Unfortunately your booking was rejected.',
                                                'createdAt':
                                                    FieldValue.serverTimestamp(),
                                                'isRead': false,
                                              });

                                          if (!context.mounted) return;
                                          ScaffoldMessenger.of(
                                            context,
                                          ).showSnackBar(
                                            const SnackBar(
                                              content: Text('Booking rejected'),
                                            ),
                                          );
                                        },
                                        child: const Text('Reject'),
                                      ),
                                    ],
                                  ),
                              ],
                            );
                          },
                        ),
                      ),
                    );
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(16),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const DashboardScreen(),
                        ),
                      );
                    },
                    child: const Text("Go to Dashboard"),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
