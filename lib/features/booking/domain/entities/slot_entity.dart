class SlotEntity {
  final String id;
  final String serviceId;
  final DateTime startTime;
  final bool isAvailable;

  const SlotEntity({
    required this.id,
    required this.serviceId,
    required this.startTime,
    required this.isAvailable,
  });
}
