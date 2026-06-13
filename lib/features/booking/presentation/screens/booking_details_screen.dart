import '../../domain/entities/booking_entity.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BookingDetailsScreen extends StatelessWidget {
  final BookingEntity booking;

  const BookingDetailsScreen({super.key, required this.booking});

  @override
  Widget build(BuildContext context) {
    final formattedDate = DateFormat(
      'EEEE, MMMM d, yyyy',
    ).format(booking.scheduledAt);
    final formattedTime = DateFormat('h:mm a').format(booking.scheduledAt);

    final isPending = booking.status.name == 'pending';

    return Scaffold(
      appBar: AppBar(title: const Text("Booking Details")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Status Header
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              decoration: BoxDecoration(
                color: isPending
                    ? Colors.orange.shade100
                    : Colors.green.shade100,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: isPending
                      ? Colors.orange.shade300
                      : Colors.green.shade300,
                ),
              ),
              child: Column(
                children: [
                  Icon(
                    isPending
                        ? Icons.pending_actions
                        : Icons.check_circle_outline,
                    color: isPending
                        ? Colors.orange.shade800
                        : Colors.green.shade800,
                    size: 40,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    booking.status.name.toUpperCase(),
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: isPending
                          ? Colors.orange.shade800
                          : Colors.green.shade800,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Details Card
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Booking Information",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Divider(height: 24),
                    _buildDetailRow(
                      Icons.numbers,
                      "Booking ID",
                      booking.id.substring(0, 8).toUpperCase(),
                    ),
                    const SizedBox(height: 16),
                    _buildDetailRow(
                      Icons.calendar_today,
                      "Date",
                      formattedDate,
                    ),
                    const SizedBox(height: 16),
                    _buildDetailRow(Icons.access_time, "Time", formattedTime),
                    const SizedBox(height: 16),
                    _buildDetailRow(
                      Icons.medical_services_outlined,
                      "Service ID",
                      booking.serviceId.substring(0, 8).toUpperCase(),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 24),

            // Notes Card
            if (booking.patientNotes != null &&
                booking.patientNotes!.isNotEmpty)
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Icon(Icons.notes, color: Colors.blue),
                          SizedBox(width: 8),
                          Text(
                            "Patient Notes",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const Divider(height: 24),
                      Text(
                        booking.patientNotes!,
                        style: const TextStyle(fontSize: 16, height: 1.5),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(IconData icon, String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 20, color: Colors.grey.shade600),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey.shade600,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              value,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ],
    );
  }
}
