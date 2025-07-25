import 'package:get/get.dart';

enum Period { weekly, monthly, ytd }

class HomeController extends GetxController {
  Rx<Period> selectedPeriod = Period.weekly.obs;

  RxString todayBonus = '40'.obs;
  RxString earnedThisYear = '1240'.obs;
  RxString totalPotential = '3000'.obs;
  RxString projectedSales = '2000'.obs;
  RxString actualSales = '1500'.obs;

  double get progress {
    final projected = double.tryParse(projectedSales.value) ?? 1;
    final actual = double.tryParse(actualSales.value) ?? 0;
    return (actual / projected).clamp(0.0, 1.0);
  }

  void changePeriod(Period period) {
    selectedPeriod.value = period;
    update();
  }
   RxString userName = "Joseph".obs;
}
