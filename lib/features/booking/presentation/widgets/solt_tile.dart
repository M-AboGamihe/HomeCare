import 'package:flutter/material.dart';
import '../../domain/entities/slot_entity.dart';

class SlotTile extends StatelessWidget {
  final SlotEntity slot;
  final VoidCallback onTap;

  const SlotTile({super.key, required this.slot, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        title: Text(
          "${slot.startTime.hour.toString().padLeft(2, '0')}:${slot.startTime.minute.toString().padLeft(2, '0')}",
        ),
        subtitle: const Text("Available slot"),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: onTap,
      ),
    );
  }
}
