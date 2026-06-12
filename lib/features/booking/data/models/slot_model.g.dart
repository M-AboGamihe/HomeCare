// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slot_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SlotModel _$SlotModelFromJson(Map<String, dynamic> json) => _SlotModel(
  id: json['id'] as String,
  serviceId: json['serviceId'] as String,
  startTime: _fromJson(json['startTime']),
  isAvailable: json['isAvailable'] as bool,
);

Map<String, dynamic> _$SlotModelToJson(_SlotModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'serviceId': instance.serviceId,
      'startTime': _toJson(instance.startTime),
      'isAvailable': instance.isAvailable,
    };
