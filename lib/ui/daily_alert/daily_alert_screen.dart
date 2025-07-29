import 'package:distribution_obj_app/infrastructure/constant/color_constant.dart';
import 'package:distribution_obj_app/infrastructure/constant/image_constant.dart';
import 'package:distribution_obj_app/infrastructure/routes/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'daily_alert_controller.dart';

class DailyAlertsScreen extends StatelessWidget {
  const DailyAlertsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DailyAlertsController>(
      init: DailyAlertsController(),
      builder: (controller) => Scaffold(
        backgroundColor: ColorConstant.primary,
        body: SafeArea(
          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "CHALLENGES",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),

                            ),
                            SizedBox(height: 6),
                            Text(
                              "Select 5 penetration objectives for the day",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),

                    Image.asset(
                      ImageConstant.clock,
                      height: 100,
                    ),
                  ],
                ),
              ),
              // White card container
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(12),

                          child: Obx(() => ListView.separated(
                            shrinkWrap: true,
                            itemCount: controller.challenges.length,
                            separatorBuilder: (_, __) => const Divider(),
                            itemBuilder: (context, index) {
                              final item = controller.challenges[index];
                              return InkWell(
                                onTap: () {
                                  if(item.status==ChallengeStatus.completed){
                                    item.status=ChallengeStatus.location;
                                  }else{

                                  item.status=ChallengeStatus.completed;
                                  }
                                  controller.update();
                                  if(item.status==ChallengeStatus.completed){
                                  Get.toNamed(RouteConstants.objectiveAchievement);

                                  }
                                },
                                child: Row(
                                  children: [
                                    if (item.status == ChallengeStatus.completed)
                                      const Icon(Icons.check_circle, color: Colors.green)

                                    else
                                      const Icon(Icons.radio_button_unchecked, color: Colors.grey),

                                    const SizedBox(width: 12),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("${item.id}  ${item.name}",
                                              style: const TextStyle(fontWeight: FontWeight.bold)),
                                          const SizedBox(height: 4),
                                          Text(item.store, style: const TextStyle(color: Colors.black54, fontSize: 13)),
                                        ],
                                      ),
                                    ),
                                    _buildStatusTag(item),
                                  ],
                                ),
                              );
                            },
                          )),
                        ),
                      ),
                      const SizedBox(height: 12),

                      // SELECT Button
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(16),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 14),
                          ),
                          child: const Text("SELECT", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white)),
                        ),
                      )
                    ],
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatusTag(Challenge item) {
    switch (item.status) {
      case ChallengeStatus.completed:
        return _tag(text: 'COMPLETED', color: Colors.teal,textColor: Colors.white);
      case ChallengeStatus.xp:
        return _tag(text: '+${item.xp} XP', color: Colors.teal.shade100, textColor: Colors.green.shade900);
      case ChallengeStatus.location:
        return _tag(text: item.location ?? 'Download', color: Colors.teal.shade100, textColor: Colors.teal.shade800);
    }
  }

  Widget _tag({required String text, Color? color, Color? textColor}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: color ?? Colors.grey.shade300,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: textColor ?? Colors.black),
      ),
    );
  }
}
