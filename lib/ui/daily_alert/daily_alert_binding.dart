


import 'package:distribution_obj_app/ui/daily_alert/daily_alert_controller.dart';
import 'package:get/get.dart';

class DailyAlertBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(DailyAlertsController());
  }
}