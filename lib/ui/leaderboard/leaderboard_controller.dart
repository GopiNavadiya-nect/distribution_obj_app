import 'package:get/get.dart';


class LeaderboardController extends GetxController {
  var userRank = 7.obs;
  var userBonus = 650.obs;

  final List<Map<String,dynamic>> leaderboardData = [
    {"name": "Steve Bonello", "bonus": 930},
    {"name": "Raissa Zammit", "bonus": 840},
    {"name": "Rodianne Falzon", "bonus": 750},
    {"name": "Nikita Zammit", "bonus": 700},
    {"name": "Caroline Bartolo", "bonus": 690},
    {"name": "Jeanette Cherrett", "bonus": 670},
    {"name": "Josheph Muscat", "bonus": 630},
    {"name": "Septemberekt", "bonus": 630},
  ];
}
