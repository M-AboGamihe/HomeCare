import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/booking/booking_bloc.dart';
import 'service_details_screen.dart';

class BookingServicesScreen extends StatefulWidget {
  const BookingServicesScreen({super.key});

  @override
  State<BookingServicesScreen> createState() => _BookingServicesScreenState();
}

class _BookingServicesScreenState extends State<BookingServicesScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<BookingBloc>().add(const BookingEvent.loadServices());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Choose Service")),
      body: BlocBuilder<BookingBloc, BookingState>(
        builder: (context, state) {
          return state.maybeWhen(
            servicesLoading: () =>
                const Center(child: CircularProgressIndicator()),
            servicesLoaded: (services) {
              return GridView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: services.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  childAspectRatio: 0.85,
                ),
                itemBuilder: (context, index) {
                  final service = services[index];
                  return Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(12),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) =>
                                ServiceDetailsScreen(service: service),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 12,
                          right: 12,
                          left: 12,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.medical_services,
                              size: 40,
                              color: Colors.blue,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              service.name,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 6),
                            Text(
                              service.description,
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[600],
                              ),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 6),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'more >>',
                                style: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.blue,

                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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
