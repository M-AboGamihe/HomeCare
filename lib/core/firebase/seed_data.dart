class SeedData {
  static const List<Map<String, dynamic>> services = [
    {
      "id": "elderly_care",
      "name": "Elderly Care",
      "description": "Professional home care for elderly patients",
      "price": 300.0,
      "duration": 60,
      "isActive": true,
    },
    {
      "id": "nursing_care",
      "name": "Nursing Care",
      "description": "Certified nurse visits at home",
      "price": 200.0,
      "duration": 45,
      "isActive": true,
    },
    {
      "id": "physiotherapy",
      "name": "Physiotherapy",
      "description": "Home physiotherapy sessions",
      "price": 250.0,
      "duration": 60,
      "isActive": true,
    },
  ];

  /// Generate FIXED slots (important: not random each time)
  static List<Map<String, dynamic>> generateSlots(String serviceId) {
    final now = DateTime.now();

    final List<int> hours = [9, 11, 13, 15, 17];

    final slots = <Map<String, dynamic>>[];

    for (int day = 1; day <= 7; day++) {
      for (final hour in hours) {
        final startTime = DateTime(now.year, now.month, now.day + day, hour);

        slots.add({
          "serviceId": serviceId,
          "startTime": startTime.toIso8601String(),
          "isAvailable": true,
        });
      }
    }

    return slots;
  }
}
