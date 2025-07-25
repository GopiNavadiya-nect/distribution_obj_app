import 'package:distribution_obj_app/infrastructure/constant/method_constant.dart';
import 'package:distribution_obj_app/ui/leaderboard/leaderboard_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LeaderboardList extends StatelessWidget {
  const LeaderboardList({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LeaderboardController>(
      init: LeaderboardController(),
      builder: (controller) {
      return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 16),
        padding: const EdgeInsets.symmetric(vertical: 12),

        child: ListView.separated(
          shrinkWrap: true,
          itemCount: controller.leaderboardData.length,
          separatorBuilder: (_, __) => const Divider(height: 1),
          itemBuilder: (context, index) {
            final user = controller.leaderboardData[index];
            final isCurrentUser =
                index + 1 == controller.userRank.value;

            return ListTile(
              leading: CircleAvatar(
                backgroundColor: MethodConstant.getRankColor(index + 1),
                child: Text(
                  "${index + 1}",
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              title: Text(user['name']),
              trailing: Text(
                "€${user['bonus']}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: isCurrentUser ? Colors.green : Colors.black,
                ),
              ),
            );
          },
        ),
      );
    },);
  }
}
