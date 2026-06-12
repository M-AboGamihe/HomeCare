import '../../domain/entities/booking_entity.dart';
import '../models/booking_model.dart';

class BookingMapper {
  static BookingEntity toEntity(BookingModel model) {
    return BookingEntity(
      id: model.id,
      userId: model.userId,
      serviceId: model.serviceId,
      slotId: model.slotId,
      scheduledAt: model.scheduledAt,
      patientNotes: model.patientNotes,
      status: model.status,
    );
  }
}
