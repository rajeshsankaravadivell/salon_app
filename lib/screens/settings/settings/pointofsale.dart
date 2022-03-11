import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salon_app/screens/settings/settings/integerationform.dart';

import 'integeration.dart';

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
              image: 'assets/settings/bell.png',
              text: 'Notification',
              onPressed: () {
                Get.to(()=>const InteregerationForm());
                if (kDebugMode) {
                  print("I am tapped");
                }
              },
            ),
            SettingsTile(
              image: 'assets/settings/list.png',
              text: 'Custom Field',
              onPressed: () {
                Get.to(()=>const InteregerationForm());
                if (kDebugMode) {
                  print("I am tapped");
                }
              },
            ),
            SettingsTile(
              image: 'assets/settings/google-forms.png',
              text: 'Form',
              onPressed: () {
                Get.to(()=>const InteregerationForm());
                if (kDebugMode) {
                  print("I am tapped");
                }
              },
            ),
            SettingsTile(
              image: 'assets/settings/booking.png',
              text: 'Booking settings',
              onPressed: () {
                Get.to(()=>const InteregerationForm());
                if (kDebugMode) {
                  print("I am tapped");
                }
              },
            ),
            SettingsTile(
              image: 'assets/settings/software-engineer.png',
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
