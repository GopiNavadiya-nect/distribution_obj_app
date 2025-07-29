import 'package:distribution_obj_app/infrastructure/model/objective_item_model.dart';
import 'package:get/get.dart';

class ObjectiveSelectionController extends GetxController {
  var selectedSalesRep = 'Alex Johnson'.obs;
  var selectedSort = 'Importance'.obs;

  var salesReps = ['Alex Johnson', 'Priya Sharma', 'John Doe'];
  var sortOptions = ['Importance', 'Bonus High → Low', 'Turnover Low → High'];

  RxList<ObjectiveItem> objectives = <ObjectiveItem>[
    ObjectiveItem(product: 'Energy Drink', client: 'Supreme Mart', turnoverRate: 'Medium', bonus: 5, isSelected: true),
    ObjectiveItem(product: 'Organic Granola', client: 'Fresh Foods', turnoverRate: 'High', bonus: 10, isSelected: true),
    ObjectiveItem(product: 'Low-Fat Yogurt', client: 'Express Market', turnoverRate: 'Medium', bonus: 9),
    ObjectiveItem(product: 'Sparkling Water', client: 'Anderson Grocery', turnoverRate: 'High', bonus: 7),
    ObjectiveItem(product: 'Almond Butter', client: 'City Superstore', turnoverRate: 'High', bonus: 6),
    ObjectiveItem(product: 'Herbal Tea', client: 'Downtown Market', turnoverRate: 'High', bonus: 10, isSelected: true),
    ObjectiveItem(product: 'Protein Bar', client: 'Supreme Mart', turnoverRate: 'Medium', bonus: 9),
    ObjectiveItem(product: 'Green Tea', client: 'Fresh Foods', turnoverRate: 'High', bonus: 5),
    ObjectiveItem(product: 'Extra-Fine Cereal', client: 'Downtown Market', turnoverRate: 'High', bonus: 6),
    ObjectiveItem(product: 'Bonus Hero', client: 'City Superstore', turnoverRate: 'Medium', bonus: 8),
  ].obs;

  void toggleSelection(int index) {
    objectives[index].isSelected = !objectives[index].isSelected;
    objectives.refresh();
  }

  void updateAllocation() {
    // Logic to send selected objectives to backend
    final selected = objectives.where((item) => item.isSelected).toList();
    Get.snackbar('Updated', '${selected.length} items allocated');
  }
}
