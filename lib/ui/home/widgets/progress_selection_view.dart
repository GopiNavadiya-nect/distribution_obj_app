import 'package:distribution_obj_app/ui/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProgressSelectionView extends StatelessWidget {
  const ProgressSelectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
      return Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Projected vs. Actual",
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      const Text("Projected",
                          style: TextStyle(fontWeight: FontWeight.w500)),
                      const SizedBox(height: 4),
                      Text("€${controller.projectedSales.value}",
                          style: const TextStyle(color: Colors.orange)),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      const Text("Actual",
                          style: TextStyle(fontWeight: FontWeight.w500)),
                      const SizedBox(height: 4),
                      Text("€${controller.actualSales.value}",
                          style: const TextStyle(color: Colors.green)),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            LinearProgressIndicator(
              value: controller.progress,
              backgroundColor: Colors.grey.shade300,
              color: Colors.green,
              minHeight: 8,
            ),
            const SizedBox(height: 8),
            const Text(
              "Confirmed by Cash Office via Route Feedback",
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      );
    },);
  }
}
