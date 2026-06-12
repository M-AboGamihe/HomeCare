import '../bloc/booking/booking_bloc.dart';
import 'notes_screen.dart';
import '../widgets/solt_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SlotsScreen extends StatefulWidget {
  final String serviceId;

  const SlotsScreen({super.key, required this.serviceId});

  @override
  State<SlotsScreen> createState() => _SlotsScreenState();
}

class _SlotsScreenState extends State<SlotsScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<BookingBloc>().add(BookingEvent.loadSlots(widget.serviceId));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Select Time Slot')),
      body: BlocBuilder<BookingBloc, BookingState>(
        builder: (context, state) {
          return state.maybeWhen(
            slotsLoading: () =>
                const Center(child: CircularProgressIndicator()),

            slotsLoaded: (slots) {
              final availableSlots =
                  slots.where((slot) => slot.isAvailable).toList()
                    ..sort((a, b) => a.startTime.compareTo(b.startTime));

              if (availableSlots.isEmpty) {
                return const Center(child: Text('No available slots'));
              }

              return ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: availableSlots.length,
                itemBuilder: (context, index) {
                  final slot = availableSlots[index];

                  return SlotTile(
                    slot: slot,
                    onTap: () {
                      if (!slot.isAvailable) return;

                      context.read<BookingBloc>().add(
                        BookingEvent.selectSlot(slot),
                      );

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const NotesScreen()),
                      );
                    },
                  );
                },
              );
            },

            error: (message) => Center(child: Text(message)),

            orElse: () => const Center(child: CircularProgressIndicator()),
          );
        },
      ),
    );
  }
}
