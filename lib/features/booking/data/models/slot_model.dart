import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

part 'slot_model.freezed.dart';
part 'slot_model.g.dart';

DateTime _fromJson(dynamic value) {
  if (value is String) return DateTime.parse(value);
  if (value is Timestamp) return value.toDate();
  return DateTime.now();
}

String _toJson(DateTime value) => value.toIso8601String();

@freezed
abstract class SlotModel with _$SlotModel {
  const factory SlotModel({
    required String id,
    required String serviceId,

    @JsonKey(fromJson: _fromJson, toJson: _toJson) required DateTime startTime,

    required bool isAvailable,
  }) = _SlotModel;

  factory SlotModel.fromJson(Map<String, dynamic> json) =>
      _$SlotModelFromJson(json);
}
