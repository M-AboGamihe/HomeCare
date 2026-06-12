import '../../domain/entities/slot_entity.dart';
import '../models/slot_model.dart';

class SlotMapper {
  static SlotEntity toEntity(SlotModel model) {
    return SlotEntity(
      id: model.id,
      serviceId: model.serviceId,
      startTime: model.startTime,
      isAvailable: model.isAvailable,
    );
  }
}
