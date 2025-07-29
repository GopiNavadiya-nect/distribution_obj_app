import 'package:distribution_obj_app/infrastructure/constant/color_constant.dart';
import 'package:distribution_obj_app/infrastructure/constant/image_constant.dart';
import 'package:distribution_obj_app/infrastructure/routes/route_constants.dart';
import 'package:distribution_obj_app/ui/home/widgets/build_period_selector.dart';
import 'package:distribution_obj_app/ui/home/widgets/info_card.dart';
import 'package:distribution_obj_app/ui/home/widgets/progress_selection_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    "NACTAR",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Row(
                  children: [
                     CircleAvatar(radius: 24,
                        backgroundImage: AssetImage(ImageConstant.user),
                        ),
                    const SizedBox(width: 12),
                    Text(
                      "Welcome,\n${controller.userName.value}!",
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
          
                const SizedBox(height: 20),
          
                // Cards
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InfoCard(
                        onTap: () => Get.toNamed(RouteConstants.objectiveSelection),
                        title: "Today\'s\nBonus",
                        value: "€${controller.todayBonus.value}",
                        color: ColorConstant.yellow700,
                        icon: Icons.attach_money,
                      ),
                      SizedBox(width: 12),
                      InfoCard(
                        onTap: () => Get.toNamed(RouteConstants.objectiveSelection),
                        title: "Earned\nThis Year",
                        value: "€${controller.earnedThisYear.value}",
                        color:ColorConstant.orange,
                        icon: Icons.emoji_events,
                      ),
                      SizedBox(width: 12),
                      InfoCard(
                        onTap: () => Get.toNamed(RouteConstants.objectiveSelection),
                        title: "Total\nPotential",
                        value: "€${controller.totalPotential.value}",
                        color: ColorConstant.green,
                        icon: Icons.bar_chart,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                BuildPeriodSelector(),
                const SizedBox(height: 20),
                ProgressSelectionView(),
              ],
            ),
          ),
        );
      },
    );
  }
}
