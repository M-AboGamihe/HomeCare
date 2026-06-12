import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_care/features/booking/presentation/bloc/booking/booking_bloc.dart';
import 'package:home_care/features/booking/presentation/screens/booking_details_screen.dart';
import 'package:intl/intl.dart';

BlocBuilder<BookingBloc, BookingState> myBookingView() {
  return BlocBuilder<BookingBloc, BookingState>(
    builder: (context, state) {
      return state.maybeWhen(
        loadInProgress: () => const Center(child: CircularProgressIndicator()),
        error: (message) => Center(
          child: Text(
            'Error: $message',
            style: const TextStyle(color: Colors.red),
          ),
        ),
        bookingsLoaded: (bookings) {
          if (bookings.isEmpty) {
            return const Center(child: Text("You have no bookings yet."));
          }

          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.all(16),
            itemCount: bookings.length,
            itemBuilder: (context, index) {
              final booking = bookings[index];
              final formattedDate = DateFormat(
                'MMM dd, yyyy - hh:mm a',
              ).format(booking.scheduledAt);

              return Card(
                elevation: 2,
                margin: const EdgeInsets.only(bottom: 12),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(16),
                  title: Text(
                    "Booking #${booking.id.substring(0, 8)}",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Icon(
                            Icons.calendar_today,
                            size: 16,
                            color: Colors.blue,
                          ),
                          const SizedBox(width: 8),
                          Text(formattedDate),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Icon(
                            Icons.info_outline,
                            size: 16,
                            color: Colors.blue,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            booking.status.name.toUpperCase(),
                            style: TextStyle(
                              color: booking.status.name == 'pending'
                                  ? Colors.orange
                                  : Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => BookingDetailsScreen(booking: booking),
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
        orElse: () => const Center(child: CircularProgressIndicator()),
      );
    },
  );
}
