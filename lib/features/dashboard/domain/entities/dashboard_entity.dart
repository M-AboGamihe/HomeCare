import '../../../booking/domain/entities/booking_entity.dart';

class DashboardEntity {
  final int totalBookings;
  final int activeBookings;
  final int completedBookings;
  final int cancelledBookings;
  final List<BookingEntity> recentBookings;

  const DashboardEntity({
    required this.totalBookings,
    required this.activeBookings,
    required this.completedBookings,
    required this.cancelledBookings,
    required this.recentBookings,
  });
}
