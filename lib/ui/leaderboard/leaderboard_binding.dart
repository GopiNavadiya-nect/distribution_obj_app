import 'package:get/get.dart';

import 'leaderboard_controller.dart';


class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(LeaderboardController());
  }
}