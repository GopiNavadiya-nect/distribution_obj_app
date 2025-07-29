import 'package:get/get.dart';

import 'objective_selection_controller.dart';


class ObjectiveSelectionBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ObjectiveSelectionController());
  }
}