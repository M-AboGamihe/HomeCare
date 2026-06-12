import '../bloc/booking/booking_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'slots_screen.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/service_entity.dart';

class ServiceDetailsScreen extends StatelessWidget {
  final ServiceEntity service;

  const ServiceDetailsScreen({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Text(
              service.name,
              style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              service.description,
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 30),
            Card(
              child: ListTile(
                leading: const Icon(Icons.attach_money),
                title: const Text("Price"),
                subtitle: Text("${service.price.toStringAsFixed(0)} EGP"),
              ),
            ),
            const SizedBox(height: 12),
            Card(
              child: ListTile(
                leading: const Icon(Icons.access_time),
                title: const Text("Duration"),
                subtitle: Text("${service.duration} Minutes"),
              ),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  context.read<BookingBloc>().add(
                    BookingEvent.selectService(service),
                  );
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => SlotsScreen(serviceId: service.id),
                    ),
                  );
                },
                child: const Text("Continue Booking"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
