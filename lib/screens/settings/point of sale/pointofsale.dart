import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../settings/integerationform.dart';
import '../settings/integeration.dart';




class PointOfSale extends StatefulWidget {
  const PointOfSale({Key? key}) : super(key: key);

  @override
  _PointOfSaleState createState() => _PointOfSaleState();
}

class _PointOfSaleState extends State<PointOfSale> {
  List<String>? choiceChipsValues;
  TextEditingController? textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // key: scaffoldKey,
        backgroundColor: Colors.white,
        body: GridView.count(
          padding: const EdgeInsets.all(16.0),
          crossAxisCount: 3,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            SettingsTile(
              image: 'assets/settings/user-profile.png',
              text: 'Profile Setup',
              onPressed: () {

                Get.to(()=>const InteregerationForm());

              },
            ),
            SettingsTile(
              image: 'assets/settings/tax.png',
              text: 'Notification',
              onPressed: () {
                Get.to(()=>const InteregerationForm());
                if (kDebugMode) {
                  print("I am tapped");
                }
              },
            ),
            SettingsTile(
              image: 'assets/settings/software-engineer.png',
              text: 'Custom Field',
              onPressed: () {
                Get.to(()=>const InteregerationForm());
                if (kDebugMode) {
                  print("I am tapped");
                }
              },
            ),
            SettingsTile(
              image: 'assets/settings/map.png',
              text: 'Form',
              onPressed: () {
                Get.to(()=>const InteregerationForm());
                if (kDebugMode) {
                  print("I am tapped");
                }
              },
            ),
            SettingsTile(
              image: 'assets/settings/shelf.png',
              text: 'Booking settings',
              onPressed: () {
                Get.to(()=>const InteregerationForm());
                if (kDebugMode) {
                  print("I am tapped");
                }
              },
            ),
            SettingsTile(
              image: 'assets/settings/medal.png',
              text: 'Google Calendar',
              onPressed: () {
                Get.to(()=>const InteregerationForm());
                if (kDebugMode) {
                  print("I am tapped");
                }
              },
            ),
            SettingsTile(
              image: 'assets/settings/google-authenticator.png',
              text: 'Google Calendar',
              onPressed: () {
                Get.to(()=>const InteregerationForm());
                if (kDebugMode) {
                  print("I am tapped");
                }
              },
            ),
            SettingsTile(
              image: 'assets/settings/bill.png',
              text: 'Google Calendar',
              onPressed: () {
                Get.to(()=>const InteregerationForm());
                if (kDebugMode) {
                  print("I am tapped");
                }
              },
            ),



          ],
        ));
  }
}
