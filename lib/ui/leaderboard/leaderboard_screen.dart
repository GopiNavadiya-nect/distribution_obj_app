import 'package:distribution_obj_app/ui/leaderboard/widgets/bonus_info_view.dart';
import 'package:distribution_obj_app/ui/leaderboard/widgets/leaderboard_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'leaderboard_controller.dart';

class LeaderboardScreen extends StatelessWidget {
  const LeaderboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LeaderboardController>(
      init: LeaderboardController(),
      builder: (controller) => SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title and Bonus Info
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Leaderboard",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 12),
                 BonusInfoView(),
                ],
              ),
            ),

            // Leaderboard List
            LeaderboardList()
          ],
        ),
      ),
    );
  }


}
