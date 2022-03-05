import 'package:flutter/material.dart';
import 'package:salon_app/constants/themeconstants.dart';
import 'package:intl/intl.dart';

enum ModeOfPayment { Cash, Card }



class GenerateAppointment extends StatefulWidget {
  const GenerateAppointment({Key? key}) : super(key: key);

  @override
  State<GenerateAppointment> createState() => _GenerateAppointmentState();
}

class _GenerateAppointmentState extends State<GenerateAppointment> {
  DateTime Today = DateTime.now();
  late String _loyaltycontroller;
  late String _TimeController;
  ModeOfPayment? _method = ModeOfPayment.Cash;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loyaltycontroller = 'Facial';
    _TimeController = '1.00 PM';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Text(
                    'Create Invoice',
                    style: getText(context).headline5,
                  ),
                  Spacer(),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    direction: Axis.horizontal,
                    children: [
                      Text(
                        'Date:',
                        style: getText(context).button,
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:
                          Text('${Today.day}:${Today.month}:${Today.year}'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.red,
                  ),
                  labelText: 'Search Customer Name',
                  labelStyle: TextStyle(
                    fontFamily: 'Lexend Deca',
                    color: Color(0xFF95A1AC),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  hintText: 'Search your text here...',
                  hintStyle: TextStyle(
                    fontFamily: 'Lexend Deca',
                    color: Color(0xFF95A1AC),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFEE4E3A),
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(9),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFEE4E3A),
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(9),
                  ),
                  filled: false,
                  fillColor: Color(0xFFFBEEE2),
                ),
                style: TextStyle(
                  fontFamily: 'Lexend Deca',
                  color: Color(0xFF2B343A),
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            CustomButton(
              title: 'Add Services',
              icon: Icon(
                Icons.add_circle,
                color: Colors.red,
              ),
              OnPressed: () {},
            ),


            CustomButton(
              title: 'Add Packages',
              icon: Icon(
                Icons.add_circle,
                color: Colors.red,
              ),
              OnPressed: () {},
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                // width: getWidth(context)*0.90,
                child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      labelText: 'Services',
                      labelStyle: TextStyle(
                        fontFamily: 'Lexend Deca',
                        color: Color(0xFF95A1AC),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                      hintText: 'Services',
                      hintStyle: TextStyle(
                        fontFamily: 'Lexend Deca',
                        color: Color(0xFF95A1AC),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFEE4E3A),
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.circular(9),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFEE4E3A),
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.circular(9),
                      ),
                      filled: true,
                      fillColor: Color(0xFFFBEEE2),
                    ),
                    value: _loyaltycontroller,
                    items: ['Facial', 'Haircut', 'Pedicure']
                        .map((label) => DropdownMenuItem(
                      child: Text(
                        label.toString(),
                        style: getText(context)
                            .labelLarge!
                            .apply(color: Colors.grey),
                      ),
                      value: label,
                    ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        _loyaltycontroller = value!;
                      });
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Staff',
                  labelStyle: TextStyle(
                    fontFamily: 'Lexend Deca',
                    color: Color(0xFF95A1AC),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  hintText: 'Type Staff Name',
                  hintStyle: TextStyle(
                    fontFamily: 'Lexend Deca',
                    color: Color(0xFF95A1AC),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFEE4E3A),
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(9),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFEE4E3A),
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(9),
                  ),
                  filled: true,
                  fillColor: Color(0xFFFBEEE2),
                ),
                style: TextStyle(
                  fontFamily: 'Lexend Deca',
                  color: Color(0xFF2B343A),
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                // width: getWidth(context)*0.90,
                child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      labelText: 'Services',
                      labelStyle: TextStyle(
                        fontFamily: 'Lexend Deca',
                        color: Color(0xFF95A1AC),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                      hintText: 'Services',
                      hintStyle: TextStyle(
                        fontFamily: 'Lexend Deca',
                        color: Color(0xFF95A1AC),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFEE4E3A),
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.circular(9),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFEE4E3A),
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.circular(9),
                      ),
                      filled: true,
                      fillColor: Color(0xFFFBEEE2),
                    ),
                    value: _TimeController,
                    items: ['1.00 PM', '12.00 PM', '8.00 AM']
                        .map((label) => DropdownMenuItem(
                      child: Text(
                        label.toString(),
                        style: getText(context)
                            .labelLarge!
                            .apply(color: Colors.grey),
                      ),
                      value: label,
                    ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        _TimeController = value!;
                      });
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Qty',
                  labelStyle: TextStyle(
                    fontFamily: 'Lexend Deca',
                    color: Color(0xFF95A1AC),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  hintText: 'Type Number Of Qty',
                  hintStyle: TextStyle(
                    fontFamily: 'Lexend Deca',
                    color: Color(0xFF95A1AC),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFEE4E3A),
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(9),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFEE4E3A),
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(9),
                  ),
                  filled: true,
                  fillColor: Color(0xFFFBEEE2),
                ),
                style: TextStyle(
                  fontFamily: 'Lexend Deca',
                  color: Color(0xFF2B343A),
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Price',
                  labelStyle: TextStyle(
                    fontFamily: 'Lexend Deca',
                    color: Color(0xFF95A1AC),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  hintText: 'Type Price Amount',
                  hintStyle: TextStyle(
                    fontFamily: 'Lexend Deca',
                    color: Color(0xFF95A1AC),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFEE4E3A),
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(9),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFEE4E3A),
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(9),
                  ),
                  filled: true,
                  fillColor: Color(0xFFFBEEE2),
                ),
                style: TextStyle(
                  fontFamily: 'Lexend Deca',
                  color: Color(0xFF2B343A),
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Discount',
                  labelStyle: TextStyle(
                    fontFamily: 'Lexend Deca',
                    color: Color(0xFF95A1AC),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  hintText: 'Type Discount Amount',
                  hintStyle: TextStyle(
                    fontFamily: 'Lexend Deca',
                    color: Color(0xFF95A1AC),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFEE4E3A),
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(9),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFEE4E3A),
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(9),
                  ),
                  filled: true,
                  fillColor: Color(0xFFFBEEE2),
                ),
                style: TextStyle(
                  fontFamily: 'Lexend Deca',
                  color: Color(0xFF2B343A),
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Total',
                  labelStyle: TextStyle(
                    fontFamily: 'Lexend Deca',
                    color: Color(0xFF95A1AC),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  hintText: 'Total',
                  hintStyle: TextStyle(
                    fontFamily: 'Lexend Deca',
                    color: Color(0xFF95A1AC),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFEE4E3A),
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(9),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFEE4E3A),
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(9),
                  ),
                  filled: true,
                  fillColor: Color(0xFFFBEEE2),
                ),
                style: TextStyle(
                  fontFamily: 'Lexend Deca',
                  color: Color(0xFF2B343A),
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),

            Wrap(
              direction: Axis.horizontal,
              spacing: 2,
              children: [
                SizedBox(
                  width: getWidth(context) * 0.40,
                  child: ListTile(
                    title: const Text('Cash'),
                    leading: Radio(
                        value: ModeOfPayment.Cash,
                        groupValue: _method,
                        onChanged: (ModeOfPayment? value) {
                          setState(() {
                            _method = value;
                          });
                        }),
                  ),
                ),
                SizedBox(
                  width: getWidth(context) * 0.40,
                  child: ListTile(
                    title: const Text('Card'),
                    leading: Radio(
                        value: ModeOfPayment.Card,
                        groupValue: _method,
                        onChanged: (ModeOfPayment? value) {
                          setState(() {
                            _method = value;
                          });
                        }),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Adjust Payment',
                  labelStyle: TextStyle(
                    fontFamily: 'Lexend Deca',
                    color: Color(0xFF95A1AC),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  hintText: 'Type Your Value',
                  hintStyle: TextStyle(
                    fontFamily: 'Lexend Deca',
                    color: Color(0xFF95A1AC),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFEE4E3A),
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(9),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFEE4E3A),
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(9),
                  ),
                  filled: true,
                  fillColor: Color(0xFFFBEEE2),
                ),
                style: TextStyle(
                  fontFamily: 'Lexend Deca',
                  color: Color(0xFF2B343A),
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            SizedBox(
              width: getHeight(context) * 0.85,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
                    child: SizedBox(
                      width: getWidth(context) * 0.50,
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Coupon Code',
                          labelStyle: TextStyle(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xFF95A1AC),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                          hintText: 'Type Coupon Code',
                          hintStyle: TextStyle(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xFF95A1AC),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFEE4E3A),
                              width: 0.5,
                            ),
                            borderRadius: BorderRadius.circular(9),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFEE4E3A),
                              width: 0.5,
                            ),
                            borderRadius: BorderRadius.circular(9),
                          ),
                          filled: true,
                          fillColor: Color(0xFFFBEEE2),
                        ),
                        style: TextStyle(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF2B343A),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(onPressed: () {}, child: SizedBox(
                    height: getHeight(context)*0.06,
                      width: getWidth(context)*0.30,

                      child: Center(child: Text('Apply'))))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Adjust Payment',
                  labelStyle: TextStyle(
                    fontFamily: 'Lexend Deca',
                    color: Color(0xFF95A1AC),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  hintText: 'Type Your Value',
                  hintStyle: TextStyle(
                    fontFamily: 'Lexend Deca',
                    color: Color(0xFF95A1AC),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFEE4E3A),
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(9),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFEE4E3A),
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(9),
                  ),
                  filled: true,
                  fillColor: Color(0xFFFBEEE2),
                ),
                style: TextStyle(
                  fontFamily: 'Lexend Deca',
                  color: Color(0xFF2B343A),
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(
                    color: Colors.red,
                    width:0.5,
                  ),
                ),


                elevation: 10,
                color: Colors.white,
                borderOnForeground: true,
                child: SizedBox(
                  height: getHeight(context) * 0.30,
                  width: getWidth(context) * 0.80,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Sub Tota₹            0.00'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Sub Tota₹            0.00'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Sub Tota₹            0.00'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Sub Tota₹            0.00'),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {},
                  child: SizedBox(
                      width: getWidth(context)*0.80,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Generate Bill',
                            style: getText(context)
                                .headline6
                                ?.apply(color: Colors.white, fontSizeFactor: 0.8),
                          ),
                        ),
                      ))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white)),
                  onPressed: () {},
                  child: SizedBox(
                    width: getWidth(context)*0.80,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Reset',
                          style: getText(context).headline6?.apply(color: Colors.red),
                        ),
                      ),
                    ),
                  )),
            ),
            SizedBox(
              height: getHeight(context)*0.10,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
        required this.title,
        required this.icon,
        required this.OnPressed})
      : super(key: key);
  final String title;
  final Icon icon;
  final void Function()? OnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Colors.red, width: 0.5)),
            ),
          ),
          onPressed: OnPressed,
          child: SizedBox(
            width: getWidth(context) * 0.83,
            height: getHeight(context) * 0.07,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: getText(context).headline6?.apply(color: Colors.red),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: icon,
                ),
              ],
            ),
          ),
      ),
    );
  }
}
