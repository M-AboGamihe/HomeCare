import 'booking_status.dart';

class BookingEntity {
  final String id;
  final String userId;
  final String serviceId;
  final String slotId;
  final DateTime scheduledAt;
  final String? patientNotes;
  final BookingStatus status;

  const BookingEntity({
    required this.id,
    required this.userId,
    required this.serviceId,
    required this.slotId,
    required this.scheduledAt,
    this.patientNotes,
    required this.status,
  });
}
