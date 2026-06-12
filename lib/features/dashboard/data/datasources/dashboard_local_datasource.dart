import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';

import '../models/dashboard_model.dart';

abstract class DashboardLocalDataSource {
  Future<void> cacheDashboard(DashboardModel dashboard);
  Future<DashboardModel?> getCachedDashboard();
}

class DashboardLocalDataSourceImpl implements DashboardLocalDataSource {
  static const String dashboardKey = 'cached_dashboard';

  final Box dashboardBox;

  DashboardLocalDataSourceImpl({required this.dashboardBox});

  @override
  Future<void> cacheDashboard(DashboardModel dashboard) async {
    await dashboardBox.put(dashboardKey, jsonEncode(dashboard.toJson()));
  }

  @override
  Future<DashboardModel?> getCachedDashboard() async {
    final jsonString = dashboardBox.get(dashboardKey);
    if (jsonString != null) {
      return DashboardModel.fromJson(jsonDecode(jsonString));
    }
    return null;
  }
}
