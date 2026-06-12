// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DashboardModel _$DashboardModelFromJson(Map<String, dynamic> json) =>
    _DashboardModel(
      totalBookings: (json['totalBookings'] as num).toInt(),
      activeBookings: (json['activeBookings'] as num).toInt(),
      completedBookings: (json['completedBookings'] as num).toInt(),
      cancelledBookings: (json['cancelledBookings'] as num).toInt(),
      recentBookings:
          (json['recentBookings'] as List<dynamic>?)
              ?.map((e) => BookingModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$DashboardModelToJson(_DashboardModel instance) =>
    <String, dynamic>{
      'totalBookings': instance.totalBookings,
      'activeBookings': instance.activeBookings,
      'completedBookings': instance.completedBookings,
      'cancelledBookings': instance.cancelledBookings,
      'recentBookings': instance.recentBookings,
    };
