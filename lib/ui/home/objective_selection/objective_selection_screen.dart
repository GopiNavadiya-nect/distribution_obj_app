import 'package:distribution_obj_app/infrastructure/constant/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'objective_selection_controller.dart';

class ObjectiveSelectionView extends StatelessWidget {
  final ObjectiveSelectionController controller =
  Get.put(ObjectiveSelectionController());

   ObjectiveSelectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('Opportunity Allocation'),
      backgroundColor: ColorConstant.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Obx(() => Column(
              children: [
                DropdownButtonFormField<String>(
                  value: controller.selectedSalesRep.value,
                  decoration: InputDecoration(labelText: 'Sales Rep',

                  ),
                  items: controller.salesReps
                      .map((rep) =>
                      DropdownMenuItem(value: rep, child: Text(rep)))
                      .toList(),
                  onChanged: (value) {
                    controller.selectedSalesRep.value = value!;
                  },
                ),
                const SizedBox(width: 12),
                DropdownButtonFormField<String>(
                  value: controller.selectedSort.value,
                  decoration: InputDecoration(labelText: 'Sort by'),
                  items: controller.sortOptions
                      .map((opt) =>
                      DropdownMenuItem(value: opt, child: Text(opt)))
                      .toList(),
                  onChanged: (value) {
                    controller.selectedSort.value = value!;
                  },
                ),
              ],
            )),
            const SizedBox(height: 20),
            Expanded(
              child: Obx(() => ListView.builder(
                itemCount: controller.objectives.length,
                itemBuilder: (context, index) {
                  final item = controller.objectives[index];
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    decoration: BoxDecoration(
                      color: ColorConstant.white,
                      borderRadius: BorderRadiusGeometry.circular(8),

                      boxShadow: [
                        BoxShadow(

                         spreadRadius: 5,
                           blurRadius: 5,
                           color: Colors.black.withAlpha(20),
                          offset: Offset(0, 3)

                          ,                        )
                      ]
                    ),
                    child: CheckboxListTile(
                      value: item.isSelected,

                      onChanged: (_) => controller.toggleSelection(index),
                      activeColor: ColorConstant.primary,
                      title: Text(item.product),
                      subtitle: Text(
                          '${item.client} • ${item.turnoverRate} Turnover'),
                      secondary: Text('€ ${item.bonus}',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  );
                },
              )),
            ),
            ElevatedButton(
              onPressed: controller.updateAllocation,
              style: ElevatedButton.styleFrom(minimumSize: Size.fromHeight(48),
              backgroundColor: ColorConstant.primary
              ),
              child: Text('Update Allocation',style: TextStyle(
                color: Colors.white
              ),),
            )
          ],
        ),
      ),
    );
  }
}
