import 'package:cloud_firestore/cloud_firestore.dart';
import 'seed_data.dart';

class FirebaseSeeder {
  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  /// Run ONCE only (safe guard included)
  static Future<void> seed() async {
    final servicesRef = _firestore.collection('services');
    final slotsRef = _firestore.collection('slots');

    // prevent re-seeding
    final existing = await servicesRef.limit(1).get();

    if (existing.docs.isNotEmpty) {
      return;
    }

    // -------------------------
    // 1. Seed Services
    // -------------------------
    for (final service in SeedData.services) {
      final serviceId = service['id'] as String;

      await servicesRef.doc(serviceId).set(service);

      // -------------------------
      // 2. Seed Slots
      // -------------------------
      final slots = SeedData.generateSlots(serviceId);

      for (final slot in slots) {
        await slotsRef.add(slot);
      }
    }
  }

  /// OPTIONAL: clean database (for testing only)
  static Future<void> clearAll() async {
    final services = await _firestore.collection('services').get();
    for (final doc in services.docs) {
      await doc.reference.delete();
    }

    final slots = await _firestore.collection('slots').get();
    for (final doc in slots.docs) {
      await doc.reference.delete();
    }

    final bookings = await _firestore.collection('bookings').get();
    for (final doc in bookings.docs) {
      await doc.reference.delete();
    }
  }
}
