import 'package:flutter/material.dart';

Widget buildOverviewGrid(dynamic dashboard) {
  return Column(
    children: [
      Row(
        children: [
          Expanded(
            child: _OverviewCard(
              title: 'Total Bookings',
              value: dashboard.totalBookings.toString(),
              icon: Icons.receipt_long,
              color: Colors.blue,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: _OverviewCard(
              title: 'Active Bookings',
              value: dashboard.activeBookings.toString(),
              icon: Icons.check_circle_outline,
              color: Colors.green,
            ),
          ),
        ],
      ),
      const SizedBox(height: 12),
      Row(
        children: [
          Expanded(
            child: _OverviewCard(
              title: 'pending',
              value: dashboard.completedBookings.toString(),
              icon: Icons.access_time,
              color: Colors.purple,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: _OverviewCard(
              title: 'Cancelled',
              value: dashboard.cancelledBookings.toString(),
              icon: Icons.cancel_outlined,
              color: Colors.red,
            ),
          ),
        ],
      ),
    ],
  );
}

class _OverviewCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  final Color color;

  const _OverviewCard({
    required this.title,
    required this.value,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade200),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.05),
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, color: color, size: 20),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            title,
            style: TextStyle(color: Colors.grey.shade600, fontSize: 13),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
