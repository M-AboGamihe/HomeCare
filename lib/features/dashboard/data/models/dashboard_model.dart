import 'package:home_care/features/booking/data/mappers/booking_mapper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/dashboard_entity.dart';
import '../../../booking/data/models/booking_model.dart';

part 'dashboard_model.freezed.dart';
part 'dashboard_model.g.dart';

@freezed
abstract class DashboardModel with _$DashboardModel {
  const DashboardModel._();

  const factory DashboardModel({
    required int totalBookings,
    required int activeBookings,
    required int completedBookings,
    required int cancelledBookings,
    @Default([]) List<BookingModel> recentBookings,
  }) = _DashboardModel;

  factory DashboardModel.fromJson(Map<String, dynamic> json) =>
      _$DashboardModelFromJson(json);

  DashboardEntity toEntity() {
    return DashboardEntity(
      totalBookings: totalBookings,
      activeBookings: activeBookings,
      completedBookings: completedBookings,
      cancelledBookings: cancelledBookings,
      recentBookings: recentBookings.map(BookingMapper.toEntity).toList(),
    );
  }
}
