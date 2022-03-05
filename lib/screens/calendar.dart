import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/constants/themeconstants.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:salon_app/screens/addblocktime.dart';
import 'package:salon_app/screens/generateappointment.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  late String _StaffNamecontroller;
  DateTime selectedDate = DateTime.now();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _StaffNamecontroller = 'eliza';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        actions: [
          PopupMenuButton(
            icon: Icon(
              CupertinoIcons.color_filter,
              color: iconcolor,
            ),
            itemBuilder: (BuildContext context) => <PopupMenuEntry>[
               PopupMenuItem(
                child: ListTile(
                  leading: Icon(Icons.add,color: iconcolor,),
                  title: Text('New Booking'),
                  onTap: (){
                    Get.to(GenerateAppointment());
                  } ,


                ),
              ),
               PopupMenuItem(
                child: ListTile(
                  leading: Icon(Icons.add,color: iconcolor,),
                  title: Text('Add Block Time'),
                  onTap: (){
                    Get.to(AddBlockTime());
                  } ,
                ),
              ),


            ],
          ),

          Padding(
            padding: const EdgeInsets.all( 16.0),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.lightBlueAccent),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.red, width: 0.5)),
                ),
              ),
              onPressed: () => _selectDate(context),

              child: Text("${selectedDate.toLocal()}".split(' ')[0],style: getText(context).button,),

            ),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 80,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            // width: getWidth(context)*0.90,
            height: getHeight(context) * 0.06,
            child: DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  // labelText: 'Discount Type',
                  labelStyle: TextStyle(
                    fontFamily: 'Lexend Deca',
                    color: Color(0xFF95A1AC),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  hintText: 'Discount Type',
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
                value: _StaffNamecontroller,
                items: ['eliza', 'Benial', 'Vetri']
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
                    _StaffNamecontroller = value!;
                  });
                }),
          ),
        ),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 30,
        mainAxisSpacing: 16,
        crossAxisCount: 4,
        semanticChildCount: 24,
        childAspectRatio: 2,
        children: <Widget>[
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.red, width: 0.5)),
                ),
              ),
              onPressed: () {},
              child: Center(
                child: Text(
                  '0.00',
                  style: getText(context).button?.apply(color: Colors.black),
                ),
              )),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.red, width: 0.5)),
                ),
              ),
              onPressed: () {},
              child: Center(
                child: Text(
                  '0.01',
                  style: getText(context).button?.apply(color: Colors.black),
                ),
              )),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.greenAccent),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.red, width: 0.5)),
                ),
              ),
              onPressed: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('Booking details'),
                      content: SizedBox(
                        height: getHeight(context) * 0.30,
                        width: getWidth(context) * 0.50,
                        child: GridView.count(
                          primary: false,
                          padding: const EdgeInsets.all(10),
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 5,
                          crossAxisCount: 2,
                          semanticChildCount: 24,
                          childAspectRatio: 2,
                          children: [
                            Text('Name     :'),
                            Text('Gobi'),
                            Text('Time       :'),
                            Text('0.02 PM'),
                            Text('Service   :'),
                            Text('Hair Cut'),
                            Text('Phone Number  :'),
                            Text('123465790'),
                          ],
                        ),
                      ),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'Cancel'),
                          child: const Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  ),
              child: Center(
                child: Text(
                  '02',
                  style: getText(context).button?.apply(color: Colors.black),
                ),
              )),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.red, width: 0.5)),
                ),
              ),
              onPressed: () {},
              child: Center(
                child: Text(
                  '03',
                  style: getText(context).button?.apply(color: Colors.black),
                ),
              )),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.red, width: 0.5)),
                ),
              ),
              onPressed: () {},
              child: Center(
                child: Text(
                  '04',
                  style: getText(context).button?.apply(color: Colors.black),
                ),
              )),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.red, width: 0.5)),
                ),
              ),
              onPressed: () {},
              child: Center(
                child: Text(
                  '04',
                  style: getText(context).button?.apply(color: Colors.black),
                ),
              )),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.red, width: 0.5)),
                ),
              ),
              onPressed: () {},
              child: Center(
                child: Text(
                  '06',
                  style: getText(context).button?.apply(color: Colors.black),
                ),
              )),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.red, width: 0.5)),
                ),
              ),
              onPressed: () {},
              child: Center(
                child: Text(
                  '07',
                  style: getText(context).button?.apply(color: Colors.black),
                ),
              )),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.red, width: 0.5)),
                ),
              ),
              onPressed: () {},
              child: Center(
                child: Text(
                  '08',
                  style: getText(context).button?.apply(color: Colors.black),
                ),
              )),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.red, width: 0.5)),
                ),
              ),
              onPressed: () {},
              child: Center(
                child: Text(
                  '09',
                  style: getText(context).button?.apply(color: Colors.black),
                ),
              )),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.red, width: 0.5)),
                ),
              ),
              onPressed: () {},
              child: Center(
                child: Text(
                  '10',
                  style: getText(context).button?.apply(color: Colors.black),
                ),
              )),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.red, width: 0.5)),
                ),
              ),
              onPressed: () {},
              child: Center(
                child: Text(
                  '11',
                  style: getText(context).button?.apply(color: Colors.black),
                ),
              )),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.red, width: 0.5)),
                ),
              ),
              onPressed: () {},
              child: Center(
                child: Text(
                  '12',
                  style: getText(context).button?.apply(color: Colors.black),
                ),
              )),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.red, width: 0.5)),
                ),
              ),
              onPressed: () {},
              child: Center(
                child: Text(
                  '01',
                  style: getText(context).button?.apply(color: Colors.black),
                ),
              )),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.red, width: 0.5)),
                ),
              ),
              onPressed: () {},
              child: Center(
                child: Text(
                  '02',
                  style: getText(context).button?.apply(color: Colors.black),
                ),
              )),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.red, width: 0.5)),
                ),
              ),
              onPressed: () {},
              child: Center(
                child: Text(
                  '03',
                  style: getText(context).button?.apply(color: Colors.black),
                ),
              )),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.red, width: 0.5)),
                ),
              ),
              onPressed: () {},
              child: Center(
                child: Text(
                  '04',
                  style: getText(context).button?.apply(color: Colors.black),
                ),
              )),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.red, width: 0.5)),
                ),
              ),
              onPressed: () {},
              child: Center(
                child: Text(
                  '05',
                  style: getText(context).button?.apply(color: Colors.black),
                ),
              )),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.red, width: 0.5)),
                ),
              ),
              onPressed: () {},
              child: Center(
                child: Text(
                  '06',
                  style: getText(context).button?.apply(color: Colors.black),
                ),
              )),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.red, width: 0.5)),
                ),
              ),
              onPressed: () {},
              child: Center(
                child: Text(
                  '07',
                  style: getText(context).button?.apply(color: Colors.black),
                ),
              )),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.red, width: 0.5)),
                ),
              ),
              onPressed: () {},
              child: Center(
                child: Text(
                  '08',
                  style: getText(context).button?.apply(color: Colors.black),
                ),
              )),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.red, width: 0.5)),
                ),
              ),
              onPressed: () {},
              child: Center(
                child: Text(
                  '09',
                  style: getText(context).button?.apply(color: Colors.black),
                ),
              )),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.red, width: 0.5)),
                ),
              ),
              onPressed: () {},
              child: Center(
                child: Text(
                  '10',
                  style: getText(context).button?.apply(color: Colors.black),
                ),
              )),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.red, width: 0.5)),
                ),
              ),
              onPressed: () {},
              child: Center(
                child: Text(
                  '11',
                  style: getText(context).button?.apply(color: Colors.black),
                ),
              )),
        ],
      ),
    );
  }
}
