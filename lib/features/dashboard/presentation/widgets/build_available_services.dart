import 'package:flutter/material.dart';
import '../../../booking/domain/entities/service_entity.dart';

Widget buildAvailableServices(List<ServiceEntity> services) {
  if (services.isEmpty) {
    return Container(
      padding: const EdgeInsets.all(24),
      alignment: Alignment.center,
      child: const Text(
        'No services available',
        style: TextStyle(color: Colors.grey, fontSize: 16),
      ),
    );
  }

  return ListView.separated(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    itemCount: services.length,
    separatorBuilder: (_, _) =>
        const Divider(height: 24, color: Colors.black12),
    itemBuilder: (context, index) {
      final service = services[index];

      return Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.blue.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(
              Icons.medical_services_outlined,
              color: Colors.blue,
            ),
          ),

          const SizedBox(width: 16),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  service.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  service.description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: Colors.grey, fontSize: 13),
                ),
              ],
            ),
          ),

          const Icon(Icons.chevron_right, color: Colors.grey),
        ],
      );
    },
  );
}
