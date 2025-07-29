


import 'package:distribution_obj_app/ui/daily_alert/objective_achivement/objective_Achievement_controller.dart';
import 'package:get/get.dart';

class ObjectiveAchievementBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(ObjectiveAchievementController());
  }
}