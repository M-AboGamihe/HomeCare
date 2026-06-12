import 'package:hive_flutter/hive_flutter.dart';
import '../models/service_model.dart';
import '../models/booking_model.dart';

abstract class BookingLocalDataSource {
  Future<void> cacheServices(List<ServiceModel> services);
  Future<List<ServiceModel>> getCachedServices();

  Future<void> cacheBookings(List<BookingModel> bookings);
  Future<List<BookingModel>> getCachedBookings();
}

class BookingLocalDataSourceImpl implements BookingLocalDataSource {
  static const String servicesKey = 'cached_services';
  static const String bookingsKey = 'cached_bookings';

  final Box box;

  BookingLocalDataSourceImpl({required this.box});

  @override
  Future<void> cacheServices(List<ServiceModel> services) async {
    await box.put(servicesKey, services.map((e) => e.toJson()).toList());
  }

  @override
  Future<List<ServiceModel>> getCachedServices() async {
    final data = box.get(servicesKey);

    if (data == null) return [];
    return (data as List)
        .map((e) => ServiceModel.fromJson(Map<String, dynamic>.from(e)))
        .toList();
  }

  @override
  Future<void> cacheBookings(List<BookingModel> bookings) async {
    await box.put(bookingsKey, bookings.map((e) => e.toJson()).toList());
  }

  @override
  Future<List<BookingModel>> getCachedBookings() async {
    final data = box.get(bookingsKey);

    if (data == null) return [];
    return (data as List)
        .map((e) => BookingModel.fromJson(Map<String, dynamic>.from(e)))
        .toList();
  }
}
