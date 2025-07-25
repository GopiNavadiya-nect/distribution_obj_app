import 'package:distribution_obj_app/ui/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BuildPeriodSelector extends StatelessWidget {
  const BuildPeriodSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: Period.values.map((period) {
            final isSelected = controller.selectedPeriod.value == period;
            return ChoiceChip(
              label: Text(period.name.toUpperCase()),
              selected: isSelected,
              onSelected: (_) => controller.changePeriod(period),
              selectedColor: Colors.blue.shade100,
              backgroundColor: Colors.white,
              labelStyle: TextStyle(
                color: isSelected ? Colors.blue : Colors.black,
                fontWeight: FontWeight.bold,
              ),
            );
          }).toList(),
        );
      }
    );
  }
}
