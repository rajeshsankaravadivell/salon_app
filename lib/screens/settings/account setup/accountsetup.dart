import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salon_app/screens/settings/account%20setup/bookingsettings.dart';
import 'package:salon_app/screens/settings/account%20setup/customfields.dart';
import 'package:salon_app/screens/settings/account%20setup/form.dart';
import 'package:salon_app/screens/settings/settings/integerationform.dart';

import '../account setup/notification_setting.dart';
import '../account setup/profile_setup.dart';
import '../settings/integeration.dart';

class AccountSetup extends StatefulWidget {
  const AccountSetup({Key? key}) : super(key: key);

  @override
  _AccountSetupState createState() => _AccountSetupState();
}

class _AccountSetupState extends State<AccountSetup> {
  String? choiceChipsValue;
  TextEditingController? textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

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
                Get.to(() => const ProfileSetupForm());
              },
            ),
            SettingsTile(
              image: 'assets/settings/bell.png',
              text: 'Notification',
              onPressed: () {
                Get.to(() => NotificationSetting());
                if (kDebugMode) {
                  print("I am tapped");
                }
              },
            ),
            SettingsTile(
              image: 'assets/settings/list.png',
              text: 'Custom Field',
              onPressed: () {
                Get.to(() => CustomFields());
                if (kDebugMode) {
                  print("I am tapped");
                }
              },
            ),
            SettingsTile(
              image: 'assets/settings/google-forms.png',
              text: 'Form',
              onPressed: () {
                Get.to(() => const AccountSetupForm());
                if (kDebugMode) {
                  print("I am tapped");
                }
              },
            ),
            SettingsTile(
              image: 'assets/settings/booking.png',
              text: 'Booking settings',
              onPressed: () {
                Get.to(() => const BookingSettings());
                if (kDebugMode) {
                  print("I am tapped");
                }
              },
            ),
            SettingsTile(
              image: 'assets/settings/software-engineer.png',
              text: 'Google Calendar',
              onPressed: () {
                Get.to(() => const InteregerationForm());
                if (kDebugMode) {
                  print("I am tapped");
                }
              },
            ),
          ],
        ));
  }
}
