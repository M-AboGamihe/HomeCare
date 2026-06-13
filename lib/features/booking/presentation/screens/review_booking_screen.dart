import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../dashboard/presentation/screens/dashboard_screen.dart';
import '../../domain/entities/service_entity.dart';
import '../../domain/entities/slot_entity.dart';
import '../bloc/booking/booking_bloc.dart';
import '../widgets/dialog_success.dart';

class ReviewBookingScreen extends StatefulWidget {
  const ReviewBookingScreen({super.key});

  @override
  State<ReviewBookingScreen> createState() => _ReviewBookingScreenState();
}

class _ReviewBookingScreenState extends State<ReviewBookingScreen> {
  bool _dialogOpen = false;

  ServiceEntity? _cachedService;
  SlotEntity? _cachedSlot;
  String _cachedNotes = '';

  void _confirm(BuildContext context) {
    final userId = FirebaseAuth.instance.currentUser?.uid;

    if (userId == null) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('User not logged in')));
      return;
    }

    context.read<BookingBloc>().add(
      BookingEvent.confirmBooking(userId: userId),
    );
  }

  void _closeDialog() {
    if (_dialogOpen && Navigator.of(context, rootNavigator: true).canPop()) {
      Navigator.of(context, rootNavigator: true).pop();
      _dialogOpen = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<BookingBloc, BookingState>(
      listener: (context, state) {
        state.whenOrNull(
          loadInProgress: () {
            if (!_dialogOpen) {
              _dialogOpen = true;
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (_) =>
                    const Center(child: CircularProgressIndicator()),
              );
            }
          },
          success: (booking) {
            _closeDialog();
            showBookingSuccessSnackBar(context, booking);
            Future.delayed(const Duration(milliseconds: 800), () {
              if (!context.mounted) return;
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (_) => DashboardScreen()),
                (route) => false,
              );
            });
          },
          error: (message) {
            _closeDialog();
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(message)));
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(title: const Text('Review Booking')),
        body: BlocBuilder<BookingBloc, BookingState>(
          builder: (context, state) {
            state.whenOrNull(
              draft: (s, sl, n) {
                _cachedService = s;
                _cachedSlot = sl;
                _cachedNotes = n;
              },
            );
            if (_cachedService == null || _cachedSlot == null) {
              return const Center(
                child: Text(
                  "No booking draft found.\nPlease select service & slot first.",
                  textAlign: TextAlign.center,
                ),
              );
            }
            final date =
                "${_cachedSlot!.startTime.day}/${_cachedSlot!.startTime.month}/${_cachedSlot!.startTime.year}";
            final time =
                "${_cachedSlot!.startTime.hour.toString().padLeft(2, '0')}:"
                "${_cachedSlot!.startTime.minute.toString().padLeft(2, '0')}";
            return Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              _row("Service", _cachedService!.name),
                              const SizedBox(height: 12),
                              _row("Price", "${_cachedService!.price} EGP"),
                              const SizedBox(height: 12),
                              _row(
                                "Duration",
                                "${_cachedService!.duration} min",
                              ),
                              const SizedBox(height: 12),
                              _row("Date", date),
                              const SizedBox(height: 12),
                              _row("Time", time),
                              const SizedBox(height: 12),
                              _row(
                                "Notes",
                                _cachedNotes.isEmpty ? "-" : _cachedNotes,
                              ),
                            ],
                          ),
                        ),
                      ),

                      const Spacer(),

                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () => _confirm(context),
                          child: const Text("Confirm Booking"),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  static Widget _row(String title, String value) {
    return Row(
      children: [
        SizedBox(
          width: 100,
          child: Text(
            "$title:",
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(child: Text(value)),
      ],
    );
  }
}
