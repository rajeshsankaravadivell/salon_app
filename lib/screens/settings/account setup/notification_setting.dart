import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class NotificationSetting extends StatefulWidget {
  NotificationSetting({Key? key}) : super(key: key);

  @override
  State<NotificationSetting> createState() => _NotificationSettingState();
}

class _NotificationSettingState extends State<NotificationSetting> {
  bool _smsDailySale = true;
  bool _emailDailySale = true;
  bool _smsAdminNotification = true;
  bool _emailAdminNotification = true;
  bool _smsAdminQuickSale = true;
  bool _emailAdminQuickSale = true;
  bool _email_sms_admin = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        title: const Text(
          "Notificatoin Setting",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              GFAccordion(
                expandedTitleBackgroundColor: Colors.deepOrange,
                collapsedTitleBackgroundColor: Colors.deepOrange,
                showAccordion: true,
                title: "Staff Notification",
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
                      content: 'SMS notification for daily sale',
                      onChanged: (val) {
                        setState(() {
                          _smsDailySale = val;
                        });
                      },
                    ),
                    SwitchRow(
                      value: _emailDailySale,
                      content: 'Email notification for daily sale',
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
                expandedTitleBackgroundColor: Colors.deepOrange,
                collapsedTitleBackgroundColor: Colors.deepOrange,
                showAccordion: true,
                title: "Staff Notification",
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
                      content: 'SMS Notification on Appointment',
                      onChanged: (val) {
                        setState(() {
                          _smsAdminNotification = val;
                        });
                      },
                    ),
                    SwitchRow(
                      value: _emailAdminNotification,
                      content: 'Email Notification on Appointment',
                      onChanged: (val) {
                        setState(() {
                          _emailAdminNotification = val;
                        });
                      },
                    ),
                    SwitchRow(
                      value: _smsAdminQuickSale,
                      content: 'SMS Notification on QuickSale',
                      onChanged: (val) {
                        setState(() {
                          _smsAdminQuickSale = val;
                        });
                      },
                    ),
                    SwitchRow(
                      value: _emailAdminQuickSale,
                      content: 'Email Notification on Appointment',
                      onChanged: (val) {
                        setState(() {
                          _emailAdminQuickSale = val;
                        });
                      },
                    ),
                    SwitchRow(
                      value: _email_sms_admin,
                      content: 'Email & SMS Notification on Daily book',
                      onChanged: (val) {
                        setState(() {
                          _email_sms_admin = val;
                        });
                      },
                    ),
                  ],
                ),
              ),
              GFAccordion(
                expandedTitleBackgroundColor: Colors.deepOrange,
                collapsedTitleBackgroundColor: Colors.deepOrange,
                showAccordion: true,
                title: "Client Notification",
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
                      content: 'SMS Notification on Appointment',
                      onChanged: (val) {
                        setState(() {
                          _smsAdminNotification = val;
                        });
                      },
                    ),
                    SwitchRow(
                      value: _smsDailySale,
                      content: 'SMS notification for daily sale',
                      onChanged: (val) {
                        setState(() {
                          _smsDailySale = val;
                        });
                      },
                    ),
                    SwitchRow(
                      value: _emailDailySale,
                      content: 'Email notification for daily sale',
                      onChanged: (val) {
                        setState(() {
                          _emailDailySale = val;
                        });
                      },
                    ),
                    SwitchRow(
                      value: _emailAdminQuickSale,
                      content: 'Email Notification on Appointment',
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
                expandedTitleBackgroundColor: Colors.deepOrange,
                collapsedTitleBackgroundColor: Colors.deepOrange,
                showAccordion: true,
                title: "SMS Notification",
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
                      content: 'SMS Notification on Appointment',
                      onChanged: (val) {
                        setState(() {
                          _smsAdminNotification = val;
                        });
                      },
                    ),
                    SwitchRow(
                      value: _emailAdminNotification,
                      content: 'Email Notification on Appointment',
                      onChanged: (val) {
                        setState(() {
                          _emailAdminNotification = val;
                        });
                      },
                    ),
                    SwitchRow(
                      value: _smsAdminQuickSale,
                      content: 'SMS Notification on QuickSale',
                      onChanged: (val) {
                        setState(() {
                          _smsAdminQuickSale = val;
                        });
                      },
                    ),
                    SwitchRow(
                      value: _emailAdminQuickSale,
                      content: 'Email Notification on Appointment',
                      onChanged: (val) {
                        setState(() {
                          _emailAdminQuickSale = val;
                        });
                      },
                    ),
                    SwitchRow(
                      value: _email_sms_admin,
                      content: 'Email & SMS Notification on Daily book',
                      onChanged: (val) {
                        setState(() {
                          _email_sms_admin = val;
                        });
                      },
                    ),
                    SwitchRow(
                      value: _emailDailySale,
                      content: 'Email notification for daily sale',
                      onChanged: (val) {
                        setState(() {
                          _emailDailySale = val;
                        });
                      },
                    ),
                    SwitchRow(
                      value: _emailAdminQuickSale,
                      content: 'Email Notification on Appointment',
                      onChanged: (val) {
                        setState(() {
                          _emailAdminQuickSale = val;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SwitchRow extends StatelessWidget {
  const SwitchRow({Key? key, required this.value, this.onChanged, required this.content}) : super(key: key);

  final bool value;
  final void Function(bool)? onChanged;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Switch(value: value, onChanged: onChanged),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(content,textAlign: TextAlign.justify,overflow:TextOverflow.ellipsis ,),
        ),
      ],
    );
  }
}
