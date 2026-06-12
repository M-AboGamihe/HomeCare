import 'package:flutter/material.dart';
import '../../domain/entities/booking_entity.dart';

void showBookingSuccessSnackBar(BuildContext context, BookingEntity booking) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Success 🎉",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          const Text("Booking created successfully"),
          const SizedBox(height: 4),
          Text("Booking ID: ${booking.id}"),
        ],
      ),
      backgroundColor: Colors.green,
      duration: const Duration(seconds: 3),
    ),
  );
}
