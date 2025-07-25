import 'package:distribution_obj_app/ui/main_screen/main_binding.dart';
import 'package:distribution_obj_app/ui/main_screen/main_screen.dart';
import 'package:get/get.dart';
import 'route_constants.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: RouteConstants.main,
      page: () =>  MainScreen(),
      binding: MainBinding(),
    ),
  ];
}
