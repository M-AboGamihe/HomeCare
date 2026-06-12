import 'package:home_care/features/booking/presentation/screens/booking_services_screen.dart';
import 'package:home_care/features/booking/presentation/screens/my_bookings_screen.dart';

import '../../../auth/presentation/bloc/auth_bloc/auth_bloc.dart';
import '../../../auth/presentation/bloc/auth_bloc/auth_event.dart';
import '../../../auth/presentation/bloc/auth_bloc/auth_state.dart';
import '../../../auth/presentation/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Widget appDrawer(BuildContext context) {
  return Drawer(
    child: BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        final userName = state.maybeWhen(
          authenticated: (user) => user.name,
          orElse: () => 'User',
        );

        final userEmail = state.maybeWhen(
          authenticated: (user) => user.email,
          orElse: () => 'no email',
        );

        return Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(color: Colors.blue),
              accountName: Text(userName),
              accountEmail: Text(userEmail),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  userName.isNotEmpty ? userName[0].toUpperCase() : 'U',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),

            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.calendar_month),
              title: const Text("My Bookings"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const MyBookingsScreen(),
                  ),
                );
              },
            ),

            ListTile(
              leading: const Icon(Icons.medical_services),
              title: const Text("Services"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const BookingServicesScreen(),
                  ),
                );
              },
            ),

            const Divider(),
            const Spacer(),

            ListTile(
              leading: const Icon(Icons.logout, color: Colors.red),
              title: const Text("Logout"),
              onTap: () {
                Navigator.pop(context);

                context.read<AuthBloc>().add(const AuthEvent.logoutRequested());

                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (_) => const LoginScreen()),
                  (route) => false,
                );
              },
            ),
          ],
        );
      },
    ),
  );
}
