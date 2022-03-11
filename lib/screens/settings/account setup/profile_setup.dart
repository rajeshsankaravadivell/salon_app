import 'package:flutter/material.dart';
import 'package:salon_app/constants/themeconstants.dart';
import 'package:salon_app/widgets/textform_field.dart';

class ProfileSetupForm extends StatelessWidget {
  const ProfileSetupForm({Key? key}) : super(key: key);
  final _formPad = const EdgeInsets.all(8);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
          "Profile Setup",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            children: [
              const Divider(),
              CustomtextFormField(hintText: 'Name', padding: _formPad),
              CustomtextFormField(hintText: 'Phone Number', padding: _formPad),
              CustomtextFormField(hintText: 'City', padding: _formPad),
              CustomtextFormField(hintText: 'Postal Code', padding: _formPad),
              CustomtextFormField(hintText: 'Country', padding: _formPad),
              CustomtextFormField(hintText: 'Email ID', padding: _formPad),
              CustomtextFormField(hintText: 'Address', padding: _formPad),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text('Password',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      )),
                ),
              ),
              const Divider(),
              CustomtextFormField(hintText: 'Password', padding: _formPad),
              CustomtextFormField(hintText: 'Cofirm Password', padding: _formPad),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text('Time zone',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      )),
                ),
              ),
              const Divider(),
              CustomtextFormField(hintText: 'State', padding: _formPad),
              CustomtextFormField(hintText: 'Date', padding: _formPad),
              CustomtextFormField(hintText: 'Currency', padding: _formPad),
              CustomtextFormField(hintText: 'Time zone', padding: _formPad),
              ElevatedButton(
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                    child: Text("Save"),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
