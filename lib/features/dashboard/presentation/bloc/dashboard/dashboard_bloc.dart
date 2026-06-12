import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/usecases/get_dashboard_data_usecase.dart';
import '../../../domain/entities/dashboard_entity.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';
part 'dashboard_bloc.freezed.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  final GetDashboardDataUseCase getDashboardDataUseCase;

  DashboardBloc({required this.getDashboardDataUseCase})
    : super(const DashboardState.initial()) {
    on<LoadDashboard>(_onLoadDashboard);
  }

  Future<void> _onLoadDashboard(
    LoadDashboard event,
    Emitter<DashboardState> emit,
  ) async {
    emit(const DashboardState.loading());

    final result = await getDashboardDataUseCase();

    result.fold(
      (failure) => emit(DashboardState.error(failure.message)),
      (dashboard) => emit(DashboardState.loaded(dashboard)),
    );
  }
}
