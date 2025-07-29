import 'package:distribution_obj_app/ui/daily_alert/objective_achivement/objective_achievement_bindings.dart';
import 'package:distribution_obj_app/ui/daily_alert/objective_achivement/objective_achievement_screen.dart';
import 'package:distribution_obj_app/ui/home/objective_selection/objective_selection_binding.dart';
import 'package:distribution_obj_app/ui/home/objective_selection/objective_selection_screen.dart';
import 'package:distribution_obj_app/ui/leaderboard/redeem_bonus/redeem_binding.dart';
import 'package:distribution_obj_app/ui/leaderboard/redeem_bonus/redeem_screen.dart';
import 'package:distribution_obj_app/ui/main_screen/main_binding.dart';
import 'package:distribution_obj_app/ui/main_screen/main_screen.dart';
import 'package:get/get.dart';
import 'route_constants.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: RouteConstants.main,
      page: () => MainScreen(),
      binding: MainBinding(),
    ),
    GetPage(
      name: RouteConstants.redeem,
      page: () => RedeemScreen(),
      binding: RedeemBinding(),
    ),
    GetPage(
      name: RouteConstants.objectiveSelection,
      page: () => ObjectiveSelectionView(),
      binding: ObjectiveSelectionBinding(),
    ),    GetPage(
      name: RouteConstants.objectiveAchievement,
      page: () => ObjectiveAchievedScreen(),
      binding: ObjectiveAchievementBindings(),
    ),
  ];
}
