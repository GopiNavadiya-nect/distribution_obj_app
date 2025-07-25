import 'package:distribution_obj_app/infrastructure/constant/color_constant.dart';
import 'package:distribution_obj_app/ui/main_screen/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'main_controller.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      init: MainController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: ColorConstant.primary,
          body:  controller.listWidgets[controller.currentIndex.value],

          bottomNavigationBar: CustomBottomBar(
            selectedIndex: controller.currentIndex.value,
            onItemTap: (index) {
              controller.currentIndex.value = index;
              controller.update();
            },
          ),
        );
      },
    );
  }
}
