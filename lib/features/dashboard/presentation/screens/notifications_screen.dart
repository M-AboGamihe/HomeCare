import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final currentUser = FirebaseAuth.instance.currentUser;

    if (currentUser == null) {
      return const Scaffold(body: Center(child: Text('Please login first')));
    }

    final userId = currentUser.uid;

    return Scaffold(
      appBar: AppBar(title: const Text('Notifications')),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('notifications')
            .where('userId', isEqualTo: userId)
            .orderBy('createdAt', descending: true)
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            debugPrint(snapshot.error.toString());

            return Center(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  'Error:\n${snapshot.error}',
                  textAlign: TextAlign.center,
                ),
              ),
            );
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return const Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.notifications_none, size: 80),
                  SizedBox(height: 12),
                  Text('No notifications yet', style: TextStyle(fontSize: 16)),
                ],
              ),
            );
          }

          final notifications = snapshot.data!.docs;

          return ListView.separated(
            padding: const EdgeInsets.all(12),
            itemCount: notifications.length,
            separatorBuilder: (context, index) => const SizedBox(height: 8),
            itemBuilder: (context, index) {
              final doc = notifications[index];

              final data = doc.data() as Map<String, dynamic>;

              final title = data['title'] ?? '';
              final body = data['body'] ?? '';
              final isRead = data['isRead'] ?? false;

              Timestamp? timestamp = data['createdAt'];
              DateTime? date = timestamp?.toDate();

              return Card(
                elevation: 2,
                child: ListTile(
                  leading: CircleAvatar(
                    child: Icon(
                      isRead ? Icons.notifications : Icons.notifications_active,
                    ),
                  ),
                  title: Text(
                    title,
                    style: TextStyle(
                      fontWeight: isRead ? FontWeight.normal : FontWeight.bold,
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(body),
                      const SizedBox(height: 4),
                      if (date != null)
                        Text(
                          '${date.day}/${date.month}/${date.year} ${date.hour}:${date.minute.toString().padLeft(2, '0')}',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                    ],
                  ),
                  onTap: () async {
                    if (!isRead) {
                      await FirebaseFirestore.instance
                          .collection('notifications')
                          .doc(doc.id)
                          .update({'isRead': true});
                    }
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
