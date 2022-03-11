import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salon_app/constants/themeconstants.dart';
import 'package:salon_app/screens/settings/settings/integerationform.dart';
import 'package:salon_app/screens/settings/settings/integerationhome.dart';

class Integeration extends StatefulWidget {
  const Integeration({Key? key}) : super(key: key);

  @override
  _IntegerationState createState() => _IntegerationState();
}

class _IntegerationState extends State<Integeration> {
  List<String>? choiceChipsValues;
  TextEditingController? textController;
  // final scaffoldKey = GlobalKey<ScaffoldState>();

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
              image: 'assets/settings/mailchimp.png',
              text: 'Mail Chimp',
              onPressed: () {
                
               Get.to(()=>const InteregerationForm());

              },
            ),
            SettingsTile(
              image: 'assets/settings/booking.png',
              text: 'Booking',
              onPressed: () {
                Get.to(()=>const InteregerationForm());
                if (kDebugMode) {
                  print("I am tapped");
                }
              },
            ),
            SettingsTile(
              image: 'assets/settings/responsibility.png',
              text: 'Get Response',
              onPressed: () {
                Get.to(()=>const InteregerationForm());
                if (kDebugMode) {
                  print("I am tapped");
                }
              },
            ),
            SettingsTile(
              image: 'assets/settings/paypal.png',
              text: 'PayPal',
              onPressed: () {
                Get.to(()=>const InteregerationForm());
                if (kDebugMode) {
                  print("I am tapped");
                }
              },
            ),
            SettingsTile(
              image: 'assets/settings/razorpay.png',
              text: 'Razorpay',
              onPressed: () {
                Get.to(()=>const InteregerationForm());
                if (kDebugMode) {
                  print("I am tapped");
                }
              },
            ),
            SettingsTile(
              image: 'assets/settings/google-calendar.png',
              text: 'Google Calendar',
              onPressed: () {
                Get.to(()=>const InteregerationForm());
                if (kDebugMode) {
                  print("I am tapped");
                }
              },
            ),
            SettingsTile(
              image: 'assets/settings/wix.png',
              text: 'FaceBook Pixel',
              onPressed: () {
                Get.to(()=>const InteregerationForm());
                if (kDebugMode) {
                  print("I am tapped");
                }
              },
            ),
            SettingsTile(
              image: 'assets/settings/google-analytics.png',
              text: 'Google Analytics',
              onPressed: () {
                Get.to(()=>const InteregerationForm());
                if (kDebugMode) {
                  print("I am tapped");
                }
              },
            ),
            SettingsTile(
              image: 'assets/settings/wordpress.png',
              text: 'Word Press',
              onPressed: () {
                Get.to(()=>const InteregerationForm());
                if (kDebugMode) {
                  print("I am tapped");
                }
              },
            ),
            SettingsTile(
              image: 'assets/settings/wix.png',
              text: 'Wix',
              onPressed: () {
                Get.to(()=>const InteregerationForm());
                if (kDebugMode) {
                  print("I am tapped");
                }
              },
            ),
            SettingsTile(
              image: 'assets/settings/weebly.png',
              text: 'Weebly',
              onPressed: () {
                Get.to(()=>const InteregerationForm());
                if (kDebugMode) {
                  print("I am tapped");
                }
              },
            ),
            SettingsTile(
              image: 'assets/settings/list.png',
              text: 'Load Widget',
              onPressed: () {
                Get.to(()=>const InteregerationForm());
                if (kDebugMode) {
                  print("I am tapped");
                }
              },
            ),
            SettingsTile(
              image: 'assets/settings/sms.png',
              text: 'Sms Api Integeration',
              onPressed: () {
                Get.to(()=>const InteregerationForm());
                if (kDebugMode) {
                  print("I am tapped");
                }
              },
            ),
            SettingsTile(
              image: 'assets/settings/woocommerce.png',
              text: 'WooCommerce',
              onPressed: () {
                Get.to(()=>const InteregerationForm());
                if (kDebugMode) {
                  print("I am tapped");
                }
              },
            ),
            SettingsTile(
              image: 'assets/settings/shopify.png',
              text: 'Shopify',
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

class SettingsTile extends StatelessWidget {
  const SettingsTile({
    Key? key,
    required this.image,
    this.onPressed,
    required this.text,
  }) : super(key: key);
  final String image;
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getWidth(context) * 0.3,
      child: AspectRatio(
        aspectRatio: 1,
        child: ElevatedButton(
          style: ButtonStyle(
              elevation: MaterialStateProperty.all(5),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18))),
              backgroundColor: MaterialStateProperty.all(Colors.white)),
          onPressed: onPressed,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                image,
                height: getHeight(context) * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  text,
                  style: getText(context).button?.copyWith(fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
