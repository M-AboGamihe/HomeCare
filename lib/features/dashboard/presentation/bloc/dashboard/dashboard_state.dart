part of 'dashboard_bloc.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState.initial() = DashboardInitial;

  const factory DashboardState.loading() = DashboardLoading;

  const factory DashboardState.loaded(DashboardEntity dashboard) =
      DashboardLoaded;

  const factory DashboardState.error(String message) = DashboardError;
}
