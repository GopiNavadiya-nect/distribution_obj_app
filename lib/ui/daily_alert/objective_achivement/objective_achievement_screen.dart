import 'package:distribution_obj_app/infrastructure/constant/color_constant.dart';
import 'package:distribution_obj_app/ui/daily_alert/objective_achivement/objective_Achievement_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ObjectiveAchievedScreen extends StatelessWidget {
  final controller = Get.put(ObjectiveAchievementController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.primary,
        leading: BackButton(color: ColorConstant.white),
      ),
      backgroundColor: ColorConstant.primary, // Light blue background
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(16),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          decoration: BoxDecoration(
            color: Colors.greenAccent,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // 🎉 Confetti
              Text(
                controller.objectiveTitle.value,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 20),

              // ✅ Green check
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.green,
                child: Icon(Icons.check, color: Colors.white, size: 30),
              ),

              const SizedBox(height: 16),

              Obx(() => Text(
                controller.description.value,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.black87),
              )),

              const SizedBox(height: 20),

              // 💰 Bonus Box
              Obx(() => Container(
                padding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.yellow.shade100,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  "You’ve earned a ${controller.bonusAmount.value} bonus",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
              )),

              const SizedBox(height: 20),

              // 🟧 Great! Button
              SizedBox(
                width: 210,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    Get.back();
                  },
                  child: Text(
                    "Great!",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
