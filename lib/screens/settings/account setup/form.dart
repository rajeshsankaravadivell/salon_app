import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class AccountSetupForm extends StatefulWidget {
  AccountSetupForm({Key? key}) : super(key: key);

  @override
  State<AccountSetupForm> createState() => _AccountSetupFormState();
}

class _AccountSetupFormState extends State<AccountSetupForm> {
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
      body: Column(),
    );
  }
}
