import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/booking_model.dart';
import '../models/service_model.dart';
import '../models/slot_model.dart';

abstract class BookingRemoteDataSource {
  Future<List<ServiceModel>> getServices();
  Future<List<SlotModel>> getAvailableSlots(String serviceId);

  Future<BookingModel> createBooking({
    required String userId,
    required String serviceId,
    required String slotId,
    required DateTime scheduledAt,
    required String notes,
  });

  Future<List<BookingModel>> getBookings(String userId);
}

class BookingRemoteDataSourceImpl implements BookingRemoteDataSource {
  final FirebaseFirestore firestore;

  BookingRemoteDataSourceImpl({required this.firestore});

  // ---------------- SERVICES ----------------
  @override
  Future<List<ServiceModel>> getServices() async {
    try {
      final snapshot = await firestore
          .collection('services')
          .get(const GetOptions(source: Source.serverAndCache));
      return snapshot.docs.map((doc) {
        return ServiceModel.fromJson({...doc.data(), 'id': doc.id});
      }).toList();
    } catch (e) {
      final snapshot = await firestore
          .collection('services')
          .get(const GetOptions(source: Source.cache));
      return snapshot.docs.map((doc) {
        return ServiceModel.fromJson({...doc.data(), 'id': doc.id});
      }).toList();
    }
  }

  // ---------------- SLOTS ----------------
  @override
  Future<List<SlotModel>> getAvailableSlots(String serviceId) async {
    try {
      final snapshot = await firestore
          .collection('slots')
          .where('serviceId', isEqualTo: serviceId)
          .where('isAvailable', isEqualTo: true)
          .get(const GetOptions(source: Source.serverAndCache));

      final slots = snapshot.docs.map((doc) {
        return SlotModel.fromJson({...doc.data(), 'id': doc.id});
      }).toList();

      slots.sort((a, b) => a.startTime.compareTo(b.startTime));
      return slots;
    } catch (e) {
      final snapshot = await firestore
          .collection('slots')
          .where('serviceId', isEqualTo: serviceId)
          .where('isAvailable', isEqualTo: true)
          .get(const GetOptions(source: Source.cache));

      final slots = snapshot.docs.map((doc) {
        return SlotModel.fromJson({...doc.data(), 'id': doc.id});
      }).toList();

      slots.sort((a, b) => a.startTime.compareTo(b.startTime));
      return slots;
    }
  }

  // ---------------- CREATE BOOKING ----------------
  @override
  Future<BookingModel> createBooking({
    required String userId,
    required String serviceId,
    required String slotId,
    required DateTime scheduledAt,
    required String notes,
  }) async {
    final bookingRef = firestore.collection('bookings').doc();

    final data = {
      'id': bookingRef.id,
      'userId': userId,
      'serviceId': serviceId,
      'slotId': slotId,
      'scheduledAt': scheduledAt.toIso8601String(),
      'notes': notes,
      'status': 'pending',
    };

    await firestore.runTransaction((tx) async {
      final slotRef = firestore.collection('slots').doc(slotId);
      final slotSnap = await tx.get(slotRef);

      final isAvailable = slotSnap.data()?['isAvailable'] ?? false;

      if (!isAvailable) {
        throw Exception("Slot already booked");
      }

      tx.set(bookingRef, data);
      tx.update(slotRef, {'isAvailable': false});

      final notificationRef = firestore.collection('notifications').doc();
      tx.set(notificationRef, {
        'userId': userId,
        'title': 'Booking Confirmed!',
        'body': 'Your booking has been successfully placed. We will see you soon.',
        'createdAt': FieldValue.serverTimestamp(),
      });
    });

    return BookingModel.fromJson(data);
  }

  // ---------------- BOOKINGS ----------------
  @override
  Future<List<BookingModel>> getBookings(String userId) async {
    try {
      final snapshot = await firestore
          .collection('bookings')
          .where('userId', isEqualTo: userId)
          .get(const GetOptions(source: Source.serverAndCache));

      return snapshot.docs.map((doc) {
        return BookingModel.fromJson({...doc.data(), 'id': doc.id});
      }).toList();
    } catch (e) {
      final snapshot = await firestore
          .collection('bookings')
          .where('userId', isEqualTo: userId)
          .get(const GetOptions(source: Source.cache));

      return snapshot.docs.map((doc) {
        return BookingModel.fromJson({...doc.data(), 'id': doc.id});
      }).toList();
    }
  }
}
