import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/booking_status.dart';

part 'booking_model.freezed.dart';
part 'booking_model.g.dart';

DateTime _dateFromJson(dynamic value) {
  if (value is String) return DateTime.parse(value);
  if (value is Timestamp) return value.toDate();
  return DateTime.now();
}

String _dateToJson(DateTime date) => date.toIso8601String();

@freezed
abstract class BookingModel with _$BookingModel {
  const factory BookingModel({
    required String id,
    required String userId,
    required String serviceId,
    required String slotId,

    @JsonKey(fromJson: _dateFromJson, toJson: _dateToJson)
    required DateTime scheduledAt,

    String? patientNotes,
    required BookingStatus status,
  }) = _BookingModel;

  factory BookingModel.fromJson(Map<String, dynamic> json) =>
      _$BookingModelFromJson(json);
}
