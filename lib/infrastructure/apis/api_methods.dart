import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiMethods {
static  Future<void> redeemBonus({
    required String userRevolutId,
    required double amount,
  }) async {
    final accessToken = 'your_access_token'; // securely store this
    final url = Uri.parse('https://b2b.revolut.com/api/1.0/transfer');

    final response = await http.post(
      url,
      headers: {
        'Authorization': 'Bearer $accessToken',
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        "request_id": "unique-request-id",
        "source_account_id": "your_revolut_account_id",
        "target": {
          "type": "revolut_user",
          "user_id": userRevolutId
        },
        "amount": amount,
        "currency": "EUR",
      }),
    );

    if (response.statusCode == 200) {
      print("Bonus redeemed successfully");
    } else {
      print("Failed: ${response.body}");
    }
  }

}
