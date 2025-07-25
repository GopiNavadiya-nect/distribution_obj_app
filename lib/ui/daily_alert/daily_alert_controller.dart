import 'package:get/get.dart';

class DailyAlertsController extends GetxController {
  var challenges = <Challenge>[
    Challenge(id: '09-199', name: 'TOOTHPASTE', store: '103102 Martinez Grocery', status: ChallengeStatus.xp, xp: 10),
    Challenge(id: '17-435', name: 'DETERGENT', store: '107501 Country Store', status: ChallengeStatus.xp, xp: 10),
    Challenge(id: '26-013', name: 'SHAMPOO', store: '105247 Frontier Market', status: ChallengeStatus.completed),
    Challenge(id: '31-70B', name: 'SOAP', store: '253440 Green Valley', status: ChallengeStatus.completed),
    Challenge(id: '45-326', name: 'BODY LOTION', store: '186832 Downtown Market', status: ChallengeStatus.location, location: 'Downtown'),
  ].obs;
}

enum ChallengeStatus { xp, completed, location }

class Challenge {
  final String id;
  final String name;
  final String store;
   ChallengeStatus status;
  final int? xp;
  final String? location;

  Challenge({
    required this.id,
    required this.name,
    required this.store,
    required this.status,
    this.xp,
    this.location,
  });
}
