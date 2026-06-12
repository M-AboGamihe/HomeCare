import 'core/network/api_client.dart';
import 'core/network/interceptors/auth_interceptor.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'features/auth/data/datasources/auth_local_datasource.dart';
import 'features/auth/data/datasources/auth_remote_datasource.dart';
import 'features/auth/data/repositories/auth_repository_impl.dart';
import 'features/auth/domain/repositories/auth_repository.dart';
import 'features/auth/domain/usecases/get_current_user.dart';
import 'features/auth/domain/usecases/login_use_case.dart';
import 'features/auth/domain/usecases/logout_use_case.dart';
import 'features/auth/domain/usecases/register_use_case.dart';
import 'features/auth/presentation/bloc/auth_bloc/auth_bloc.dart';

import 'features/booking/data/datasources/booking_local_datasource.dart';
import 'features/booking/data/datasources/booking_remote_datasource.dart';
import 'features/booking/data/repositories/booking_repository_impl.dart';
import 'features/booking/domain/repositories/booking_repository.dart';
import 'features/booking/domain/usecases/create_booking_usecase.dart';
import 'features/booking/domain/usecases/get_available_slots_usecase.dart';
import 'features/booking/domain/usecases/get_bookings_usecase.dart';
import 'features/booking/domain/usecases/get_services_usecase.dart';
import 'features/booking/presentation/bloc/booking/booking_bloc.dart';

import 'features/dashboard/data/datasources/dashboard_local_datasource.dart';
import 'features/dashboard/data/datasources/dashboard_remote_datasource.dart';
import 'features/dashboard/data/repositories/dashboard_repository_impl.dart';
import 'features/dashboard/domain/repositories/dashboard_repository.dart';
import 'features/dashboard/domain/usecases/get_dashboard_data_usecase.dart';
import 'features/dashboard/presentation/bloc/dashboard/dashboard_bloc.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

final sl = GetIt.instance;

Future<void> init(Box authBox, Box bookingBox, Box dashboardBox) async {
  // =====================================================
  // 🔥 EXTERNAL DEPENDENCIES
  // =====================================================
  sl.registerLazySingleton<FirebaseFirestore>(() => FirebaseFirestore.instance);

  sl.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);

  // =====================================================
  // 🌐 NETWORK LAYER (DIO)
  // =====================================================
  sl.registerLazySingleton(() => AuthInterceptor(authLocalDataSource: sl()));

  sl.registerLazySingleton<ApiClient>(() => ApiClient(authInterceptor: sl()));

  // =====================================================
  // 📦 DATA SOURCES (LOCAL)
  // =====================================================
  sl.registerLazySingleton<AuthLocalDataSource>(
    () => AuthLocalDataSourceImpl(authBox),
  );

  sl.registerLazySingleton<BookingLocalDataSource>(
    () => BookingLocalDataSourceImpl(box: bookingBox),
  );

  sl.registerLazySingleton<DashboardLocalDataSource>(
    () => DashboardLocalDataSourceImpl(dashboardBox: dashboardBox),
  );

  // =====================================================
  // 🌐 DATA SOURCES (REMOTE)
  // =====================================================
  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(sl<FirebaseAuth>(), sl<FirebaseFirestore>()),
  );

  sl.registerLazySingleton<BookingRemoteDataSource>(
    () => BookingRemoteDataSourceImpl(firestore: sl()),
  );

  sl.registerLazySingleton<DashboardRemoteDataSource>(
    () => DashboardRemoteDataSourceImpl(
      firestore: sl<FirebaseFirestore>(),
      auth: sl<FirebaseAuth>(),
    ),
  );

  // =====================================================
  // 🧠 REPOSITORIES
  // =====================================================
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(remote: sl(), local: sl()),
  );

  sl.registerLazySingleton<BookingRepository>(
    () => BookingRepositoryImpl(remoteDataSource: sl(), localDataSource: sl()),
  );

  sl.registerLazySingleton<DashboardRepository>(
    () =>
        DashboardRepositoryImpl(remoteDataSource: sl(), localDataSource: sl()),
  );

  // =====================================================
  // ⚡ USE CASES
  // =====================================================
  sl.registerLazySingleton<LoginUseCase>(
    () => LoginUseCase(sl<AuthRepository>()),
  );

  sl.registerLazySingleton<RegisterUseCase>(
    () => RegisterUseCase(sl<AuthRepository>()),
  );

  sl.registerLazySingleton<LogoutUseCase>(
    () => LogoutUseCase(sl<AuthRepository>()),
  );

  sl.registerLazySingleton<GetCurrentUserUseCase>(
    () => GetCurrentUserUseCase(repository: sl<AuthRepository>()),
  );

  sl.registerLazySingleton<GetServicesUseCase>(() => GetServicesUseCase(sl()));

  sl.registerLazySingleton<GetAvailableSlotsUseCase>(
    () => GetAvailableSlotsUseCase(sl()),
  );

  sl.registerLazySingleton<CreateBookingUseCase>(
    () => CreateBookingUseCase(sl()),
  );

  sl.registerLazySingleton<GetBookingsUseCase>(() => GetBookingsUseCase(sl()));

  sl.registerLazySingleton<GetDashboardDataUseCase>(
    () => GetDashboardDataUseCase(sl()),
  );

  // =====================================================
  // 🎯 BLOCS
  // =====================================================
  sl.registerFactory<AuthBloc>(
    () => AuthBloc(
      login: sl(),
      register: sl(),
      logout: sl(),
      getCurrentUser: sl(),
    ),
  );

  sl.registerFactory<BookingBloc>(
    () => BookingBloc(
      getServicesUseCase: sl(),
      getSlotsUseCase: sl(),
      createBookingUseCase: sl(),
      getBookingsUseCase: sl(),
    ),
  );

  sl.registerFactory<DashboardBloc>(
    () => DashboardBloc(getDashboardDataUseCase: sl()),
  );
}
