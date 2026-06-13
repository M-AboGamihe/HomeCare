import '../widgets/build_overview_grid.dart';
import '../widgets/build_promo_banner.dart';
import '../widgets/build_section_header.dart';
import '../widgets/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/dashboard/dashboard_bloc.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<DashboardBloc>().add(const DashboardEvent.loadDashboard());
    });
  }

  @override
  Widget build(BuildContext context) {
    return const _DashboardView();
  }
}

class _DashboardView extends StatelessWidget {
  const _DashboardView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      drawer: appDrawer(context),
      appBar: AppBar(
        title: const Text("Dashboard"),

        // actions: [
        //   IconButton(
        //     icon: const Icon(Icons.notifications_none),
        //     onPressed: () {
        //       Navigator.push(
        //         context,
        //         MaterialPageRoute(builder: (_) => const NotificationsScreen()),
        //       );
        //     },
        //   ),
        // ],
      ),

      body: SafeArea(
        child: BlocBuilder<DashboardBloc, DashboardState>(
          builder: (context, state) {
            return state.when(
              initial: () => const Center(child: CircularProgressIndicator()),

              loading: () => const Center(child: CircularProgressIndicator()),

              error: (message) => Center(
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Text(message, textAlign: TextAlign.center),
                ),
              ),

              loaded: (dashboard) {
                return RefreshIndicator(
                  onRefresh: () async {
                    context.read<DashboardBloc>().add(
                      const DashboardEvent.loadDashboard(),
                    );
                  },

                  child: SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(20),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        buildSectionHeader(
                          '                 Manage your home care bookings easily.',
                        ),
                        buildPromoBanner(context),
                        const SizedBox(height: 24),

                        buildSectionHeader('My Bookings States.'),
                        const SizedBox(height: 20),

                        buildOverviewGrid(dashboard),
                        const SizedBox(height: 32),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
