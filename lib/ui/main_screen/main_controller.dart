// import 'package:distribution_obj_app/ui/daily_alert/daily_alert_screen.dart';
import 'package:distribution_obj_app/ui/home/home_screen.dart';
import 'package:distribution_obj_app/ui/leaderboard/leaderboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController {

   RxInt currentIndex =0.obs;

   List<Widget> listWidgets=[
     HomeScreen(),
     LeaderboardScreen(),
     Container/*DailyAlertsScreen*/(
       child: Center(
         child: Text('Challenges'),
       ),
     ),
     Container(
       child: Center(
         child: Text('Rewards'),
       ),
     ),
   ];
}
