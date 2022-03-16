import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/accordion/gf_accordion.dart';
import 'package:salon_app/constants/themeconstants.dart';
import 'package:salon_app/widgets/textform_field.dart';

import '../settings/integeration.dart';
import '../settings/integerationform.dart';
import 'notification_setting.dart';

class BookingSettings extends StatefulWidget {
  const BookingSettings({Key? key}) : super(key: key);

  @override
  State<BookingSettings> createState() => _BookingSettingsState();
}

class _BookingSettingsState extends State<BookingSettings> {

  bool _smsDailySale = true;
  bool _emailDailySale = true;
  bool _smsAdminNotification = true;
  bool _emailAdminNotification = true;
  bool _smsAdminQuickSale = true;
  bool _emailAdminQuickSale = true;
  bool _email_sms_admin = true;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appbarcolor,
          title: Text(
            'Booking Settings',
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(80),
            child: TabBar(
              tabs: [
                Tab(
                  child: Text('Online Booking'),
                ),
                Tab(
                  child: Text('Online Booking'),
                ),
                Tab(
                  child: Text('Online Booking'),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SettingsTile(
                        image: 'assets/client.png',
                        text: 'Business Logo',
                        onPressed: () {
                          Get.to(() => const InteregerationForm());
                          if (kDebugMode) {
                            print("I am tapped");
                          }
                        },
                      ),
                      SettingsTile(
                        image: 'assets/client.png',
                        text: 'Cover Image',
                        onPressed: () {
                          Get.to(() => const InteregerationForm());
                          if (kDebugMode) {
                            print("I am tapped");
                          }
                        },
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'Photos',
                    style: getText(context).headline6,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      BookingTile(
                        image: 'assets/settings/user-profile.png',
                      ),
                      BookingTile(
                        image: 'assets/settings/user-profile.png',
                      ),
                      BookingTile(
                        image: 'assets/settings/user-profile.png',
                      ),
                      BookingTile(
                        image: 'assets/settings/user-profile.png',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'Business Logo',
                    style: getText(context).headline6,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: CustomtextFormField(
                      hintText: 'City', padding: EdgeInsets.all(16.0)),
                ),
                Center(
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 40.0, right: 40.0, top: 16.0, bottom: 16.0),
                        child: Text(
                          'Save',
                          style: getText(context)
                              .button
                              ?.apply(color: Colors.white),
                        ),
                      )),
                )
              ],
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    GFAccordion(
                      expandedTitleBackgroundColor: Colors.red,
                      collapsedTitleBackgroundColor: Colors.red,
                      showAccordion: true,
                      title: "Initial status for online booking",
                      textStyle: const TextStyle(color: Colors.white),
                      titleBorderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                        bottomLeft: Radius.zero,
                        bottomRight: Radius.zero,
                      ),
                      contentBorderRadius: const BorderRadius.only(
                        topLeft: Radius.zero,
                        topRight: Radius.zero,
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                      contentBorder: Border.all(width: 2, style: BorderStyle.solid),
                      contentChild: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SwitchRow(
                            value: _smsDailySale,
                            content: 'booking selection',
                            onChanged: (val) {
                              setState(() {
                                _smsDailySale = val;
                              });
                            },
                          ),
                          SwitchRow(
                            value: _emailDailySale,
                            content: 'Booking staff option',
                            onChanged: (val) {
                              setState(() {
                                _emailDailySale = val;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    GFAccordion(
                      expandedTitleBackgroundColor: Colors.red,
                      collapsedTitleBackgroundColor: Colors.red,
                      showAccordion: true,
                      title: "Booking Selection",
                      textStyle: const TextStyle(color: Colors.white),
                      titleBorderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                        bottomLeft: Radius.zero,
                        bottomRight: Radius.zero,
                      ),
                      contentBorderRadius: const BorderRadius.only(
                        topLeft: Radius.zero,
                        topRight: Radius.zero,
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                      contentBorder: Border.all(width: 2, style: BorderStyle.solid),
                      contentChild: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SwitchRow(
                            value: _smsAdminNotification,
                            content: 'Booking Selection',
                            onChanged: (val) {
                              setState(() {
                                _smsAdminNotification = val;
                              });
                            },
                          ),
                          SwitchRow(
                            value: _emailAdminNotification,
                            content: 'Booking Selection',
                            onChanged: (val) {
                              setState(() {
                                _emailAdminNotification = val;
                              });
                            },
                          ),

                        ],
                      ),
                    ),
                    GFAccordion(
                      expandedTitleBackgroundColor: Colors.red,
                      collapsedTitleBackgroundColor: Colors.red,
                      showAccordion: true,
                      title: "Booking staff option",
                      textStyle: const TextStyle(color: Colors.white),
                      titleBorderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                        bottomLeft: Radius.zero,
                        bottomRight: Radius.zero,
                      ),
                      contentBorderRadius: const BorderRadius.only(
                        topLeft: Radius.zero,
                        topRight: Radius.zero,
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                      contentBorder: Border.all(width: 2, style: BorderStyle.solid),
                      contentChild: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SwitchRow(
                            value: _smsAdminNotification,
                            content: 'Customer can select staff member,\n or choose no preference (default)',
                            onChanged: (val) {
                              setState(() {
                                _smsAdminNotification = val;
                              });
                            },
                          ),
                          SwitchRow(
                            value: _smsDailySale,
                            content: 'Customer must select \nspecific staff member',
                            onChanged: (val) {
                              setState(() {
                                _smsDailySale = val;
                              });
                            },
                          ),
                          SwitchRow(
                            value: _emailDailySale,
                            content: 'Have no option to select staff,\n staff automatically assigned',
                            onChanged: (val) {
                              setState(() {
                                _emailDailySale = val;
                              });
                            },
                          ),

                        ],
                      ),
                    ),
                    GFAccordion(
                      expandedTitleBackgroundColor: Colors.red,
                      collapsedTitleBackgroundColor: Colors.red,
                      showAccordion: true,
                      title: "Online Booking Settings",
                      textStyle: const TextStyle(color: Colors.white),
                      titleBorderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                        bottomLeft: Radius.zero,
                        bottomRight: Radius.zero,
                      ),
                      contentBorderRadius: const BorderRadius.only(
                        topLeft: Radius.zero,
                        topRight: Radius.zero,
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                      contentBorder: Border.all(width: 2, style: BorderStyle.solid),
                      contentChild: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SwitchRow(
                            value: _smsAdminNotification,
                            content: 'sell services',
                            onChanged: (val) {
                              setState(() {
                                _smsAdminNotification = val;
                              });
                            },
                          ),
                          SwitchRow(
                            value: _emailAdminNotification,
                            content: 'sell packages',
                            onChanged: (val) {
                              setState(() {
                                _emailAdminNotification = val;
                              });
                            },
                          ),
                          SwitchRow(
                            value: _smsAdminQuickSale,
                            content: 'sell membership',
                            onChanged: (val) {
                              setState(() {
                                _smsAdminQuickSale = val;
                              });
                            },
                          ),
                          SwitchRow(
                            value: _emailAdminQuickSale,
                            content: 'otp verification',
                            onChanged: (val) {
                              setState(() {
                                _emailAdminQuickSale = val;
                              });
                            },
                          ),

                        ],
                      ),
                    ),
                    GFAccordion(
                      expandedTitleBackgroundColor: Colors.red,
                      collapsedTitleBackgroundColor: Colors.red,
                      showAccordion: true,
                      title: "Initial deposit",
                      textStyle: const TextStyle(color: Colors.white),
                      titleBorderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                        bottomLeft: Radius.zero,
                        bottomRight: Radius.zero,
                      ),
                      contentBorderRadius: const BorderRadius.only(
                        topLeft: Radius.zero,
                        topRight: Radius.zero,
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                      contentBorder: Border.all(width: 2, style: BorderStyle.solid),
                      contentChild: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SwitchRow(
                            value: _smsAdminNotification,
                            content: 'Deposit Amount',
                            onChanged: (val) {
                              setState(() {
                                _smsAdminNotification = val;
                              });
                            },
                          ),
                          SwitchRow(
                            value: _emailAdminNotification,
                            content: 'Deposit Percentage',
                            onChanged: (val) {
                              setState(() {
                                _emailAdminNotification = val;
                              });
                            },
                          ),


                        ],
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: (){}, child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: getWidth(context)*0.20,vertical: 16.0),
                        child: Text(
                          'save'
                        ),
                      )),
                    )
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [


                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Link & Short Link for website',style: getText(context).headline6,),
                      ),
                    ),
                    Center(child: Text('Website Link :https://beniel.salon.io/wb Short URL : https://tinyurl.com/y8bx96g4',)),

                    GFAccordion(
                      expandedTitleBackgroundColor: Colors.red,
                      collapsedTitleBackgroundColor: Colors.red,
                      showAccordion: true,
                      title: "Customise your selection",
                      textStyle: const TextStyle(color: Colors.white),
                      titleBorderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                        bottomLeft: Radius.zero,
                        bottomRight: Radius.zero,
                      ),
                      contentBorderRadius: const BorderRadius.only(
                        topLeft: Radius.zero,
                        topRight: Radius.zero,
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                      contentBorder: Border.all(width: 2, style: BorderStyle.solid),
                      contentChild: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SwitchRow(
                            value: _smsDailySale,
                            content: 'Show Products On Website',
                            onChanged: (val) {
                              setState(() {
                                _smsDailySale = val;
                              });
                            },
                          ),
                          SwitchRow(
                            value: _emailDailySale,
                            content: 'Show Products On Website',
                            onChanged: (val) {
                              setState(() {
                                _emailDailySale = val;
                              });
                            },
                          ),
                          SwitchRow(
                            value: _smsDailySale,
                            content: 'Show Appointments On Website',
                            onChanged: (val) {
                              setState(() {
                                _smsDailySale = val;
                              });
                            },
                          ),
                          SwitchRow(
                            value: _smsDailySale,
                            content: 'booking selection',
                            onChanged: (val) {
                              setState(() {
                                _smsDailySale = val;
                              });
                            },
                          ),
                        ],
                      ),
                    ),




                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: (){}, child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: getWidth(context)*0.20,vertical: 16.0),
                        child: Text(
                            'save'
                        ),
                      )),
                    )
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

class BookingTile extends StatelessWidget {
  const BookingTile({
    Key? key,
    required this.image,
    this.onPressed,
  }) : super(key: key);
  final String image;

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getWidth(context) * 0.2,
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
            ],
          ),
        ),
      ),
    );
  }
}
