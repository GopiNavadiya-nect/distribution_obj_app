import 'package:distribution_obj_app/infrastructure/constant/color_constant.dart';
import 'package:distribution_obj_app/ui/leaderboard/leaderboard_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BonusInfoView extends StatelessWidget {
  const BonusInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LeaderboardController>(
      init: LeaderboardController(),
      builder: (controller) {

      return  Row(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Container(
              decoration: BoxDecoration(
                  color: ColorConstant.orangeLight,
                  shape: BoxShape.circle
              ),
              padding: EdgeInsets.all(5),
              child: Icon(Icons.emoji_events, color:ColorConstant.deepOrange, size: 50)),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "You're #${controller.userRank.value}",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "€${controller.userBonus.value}",
                  style: const TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    },);
  }
}
