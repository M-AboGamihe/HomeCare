// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BookingModel _$BookingModelFromJson(Map<String, dynamic> json) =>
    _BookingModel(
      id: json['id'] as String,
      userId: json['userId'] as String,
      serviceId: json['serviceId'] as String,
      slotId: json['slotId'] as String,
      scheduledAt: _dateFromJson(json['scheduledAt']),
      patientNotes: json['patientNotes'] as String?,
      status: $enumDecode(_$BookingStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$BookingModelToJson(_BookingModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'serviceId': instance.serviceId,
      'slotId': instance.slotId,
      'scheduledAt': _dateToJson(instance.scheduledAt),
      'patientNotes': instance.patientNotes,
      'status': _$BookingStatusEnumMap[instance.status]!,
    };

const _$BookingStatusEnumMap = {
  BookingStatus.pending: 'pending',
  BookingStatus.confirmed: 'confirmed',
  BookingStatus.inProgress: 'inProgress',
  BookingStatus.completed: 'completed',
  BookingStatus.cancelled: 'cancelled',
};
