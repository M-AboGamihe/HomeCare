import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../../features/booking/data/models/booking_model.dart';
import '../../../../features/booking/domain/entities/booking_status.dart';
import '../models/dashboard_model.dart';

abstract class DashboardRemoteDataSource {
  Future<DashboardModel> getDashboardData();
}

class DashboardRemoteDataSourceImpl implements DashboardRemoteDataSource {
  final FirebaseFirestore firestore;
  final FirebaseAuth auth;

  DashboardRemoteDataSourceImpl({required this.firestore, required this.auth});

  @override
  Future<DashboardModel> getDashboardData() async {
    final userId = auth.currentUser?.uid;

    if (userId == null) {
      throw Exception("User not authenticated");
    }

    QuerySnapshot<Map<String, dynamic>> snapshot;
    try {
      snapshot = await firestore
          .collection('bookings')
          .where('userId', isEqualTo: userId)
          .get(const GetOptions(source: Source.serverAndCache));
    } catch (e) {
      snapshot = await firestore
          .collection('bookings')
          .where('userId', isEqualTo: userId)
          .get(const GetOptions(source: Source.cache));
    }

    final bookings = snapshot.docs.map((doc) {
      return BookingModel.fromJson({...doc.data(), 'id': doc.id});
    }).toList();

    bookings.sort((a, b) => b.scheduledAt.compareTo(a.scheduledAt));

    final total = bookings.length;

    final active = bookings.where((b) {
      return b.status == BookingStatus.confirmed;
    }).length;

    final completed = bookings
        .where((b) => b.status == BookingStatus.pending)
        .length;

    final cancelled = bookings
        .where((b) => b.status == BookingStatus.cancelled)
        .length;

    return DashboardModel(
      totalBookings: total,
      activeBookings: active,
      completedBookings: completed,
      cancelledBookings: cancelled,
      recentBookings: bookings.take(5).toList(),
    );
  }
}
