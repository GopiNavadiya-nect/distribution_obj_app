import 'package:distribution_obj_app/infrastructure/apis/api_methods.dart';
import 'package:get/get.dart';

class RedeemController extends GetxController {
  RxDouble availableBonus = 85.0.obs;
  RxString enteredAmount = ''.obs;
  var isLoading = false.obs;

  Future<void> sendToRevolut() async {
    double? amount = double.tryParse(enteredAmount.value);
    if (amount == null || amount <= 0 || amount > availableBonus.value) {
      Get.snackbar("Invalid Amount", "Please enter a valid bonus amount.");
      return;
    } else {
      isLoading.value = true;
      await ApiMethods.redeemBonus(
        userRevolutId: 'xxx',
        amount: double.tryParse(enteredAmount.value.toString()) ?? 00,
      );
      isLoading.value = false;
      Get.snackbar("Success", "€${amount.toStringAsFixed(2)} sent to Revolut.");
    }
    // Your transfer logic here...
  }
}
