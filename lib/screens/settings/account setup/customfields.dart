import 'package:flutter/material.dart';
import 'package:salon_app/constants/themeconstants.dart';
import 'package:salon_app/widgets/textform_field.dart';



enum SingingCharacter { lafayette, jefferson }

class CustomFields extends StatefulWidget {


 CustomFields({Key? key}) : super(key: key);

  @override
  State<CustomFields> createState() => _CustomFieldsState();
}

class _CustomFieldsState extends State<CustomFields> {
  SingingCharacter? _character = SingingCharacter.lafayette;

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
        child:Column(
          children: [
            Table(
              // border: TableBorder.all(color: Colors.redAccent,borderRadius: BorderRadius.circular(20)),
              columnWidths: <int, TableColumnWidth>{
                0: FixedColumnWidth(getWidth(context) * 0.35),
                1: FixedColumnWidth(getWidth(context) * 0.20),
                2: FixedColumnWidth(getWidth(context) * 0.25),
                3: FixedColumnWidth(getWidth(context) * 0.20),
                // 2: FixedColumnWidth(64),
              },
              defaultVerticalAlignment:
              TableCellVerticalAlignment.middle,
              children: <TableRow>[
                 TableRow(
                  decoration:BoxDecoration(

                    color: Colors.grey.withOpacity(0.5)
                  ),
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Text('Field Name'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text('Default',),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Mandatory'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Display on Book Now',textAlign: TextAlign.center,),
                    ),
                  ],
                ),

                TableRow(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0,right: 8.0),
                      child: Text('Name'),
                    ),
                    Padding(
                      padding:  EdgeInsets.all(2.0),
                      child: Radio<SingingCharacter>(
                        value: SingingCharacter.jefferson,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.all(2.0),
                      child:  Radio<SingingCharacter>(
                        value: SingingCharacter.lafayette,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.all(2.0),
                      child: Radio<SingingCharacter>(
                        value: SingingCharacter.jefferson,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),

                  ],
                ),
                TableRow(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0,right: 8.0),
                      child: Text('Contact'),
                    ),
                    Padding(
                      padding:  EdgeInsets.all(2.0),
                      child: Radio<SingingCharacter>(
                        value: SingingCharacter.jefferson,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.all(2.0),
                      child:  Radio<SingingCharacter>(
                        value: SingingCharacter.lafayette,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.all(2.0),
                      child: Radio<SingingCharacter>(
                        value: SingingCharacter.jefferson,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),

                  ],
                ),
                TableRow(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0,right: 8.0),
                      child: Text('Email'),
                    ),
                    Padding(
                      padding:  EdgeInsets.all(2.0),
                      child: Radio<SingingCharacter>(
                        value: SingingCharacter.jefferson,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.all(2.0),
                      child:  Radio<SingingCharacter>(
                        value: SingingCharacter.lafayette,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.all(2.0),
                      child: Radio<SingingCharacter>(
                        value: SingingCharacter.jefferson,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),

                  ],
                ),
                TableRow(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0,right: 8.0),
                      child: Text('Gender'),
                    ),
                    Padding(
                      padding:  EdgeInsets.all(2.0),
                      child: Radio<SingingCharacter>(
                        value: SingingCharacter.jefferson,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.all(2.0),
                      child:  Radio<SingingCharacter>(
                        value: SingingCharacter.lafayette,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.all(2.0),
                      child: Radio<SingingCharacter>(
                        value: SingingCharacter.jefferson,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),

                  ],
                ),
                TableRow(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0,right: 8.0),
                      child: Text('Client type'),
                    ),
                    Padding(
                      padding:  EdgeInsets.all(2.0),
                      child: Radio<SingingCharacter>(
                        value: SingingCharacter.jefferson,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.all(2.0),
                      child:  Radio<SingingCharacter>(
                        value: SingingCharacter.lafayette,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.all(2.0),
                      child: Radio<SingingCharacter>(
                        value: SingingCharacter.jefferson,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),

                  ],
                ),
                TableRow(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0,right: 8.0),
                      child: Text('Parent Name'),
                    ),
                    Padding(
                      padding:  EdgeInsets.all(2.0),
                      child: Radio<SingingCharacter>(
                        value: SingingCharacter.jefferson,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.all(2.0),
                      child:  Radio<SingingCharacter>(
                        value: SingingCharacter.lafayette,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.all(2.0),
                      child: Radio<SingingCharacter>(
                        value: SingingCharacter.jefferson,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),

                  ],
                ),
                TableRow(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0,right: 8.0),
                      child: Text('Card Number'),
                    ),
                    Padding(
                      padding:  EdgeInsets.all(2.0),
                      child: Radio<SingingCharacter>(
                        value: SingingCharacter.jefferson,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.all(2.0),
                      child:  Radio<SingingCharacter>(
                        value: SingingCharacter.lafayette,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.all(2.0),
                      child: Radio<SingingCharacter>(
                        value: SingingCharacter.jefferson,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),

                  ],
                ),






              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){}, child: Text('Add More Fields')),
            )
          ],
        ),
      ),
    );
  }
}
