import '../../domain/entities/service_entity.dart';
import '../models/service_model.dart';

class ServiceMapper {
  static ServiceEntity toEntity(ServiceModel model) {
    return ServiceEntity(
      id: model.id,
      name: model.name,
      description: model.description,
      price: model.price,
      duration: model.duration,
    );
  }

  static ServiceModel fromEntity(ServiceEntity entity) {
    return ServiceModel(
      id: entity.id,
      name: entity.name,
      description: entity.description,
      price: entity.price,
      duration: entity.duration,
    );
  }
}
