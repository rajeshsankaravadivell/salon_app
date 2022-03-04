import 'package:flutter/material.dart';
import 'package:salon_app/constants/themeconstants.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {

 late   String _StaffNamecontroller;




 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _StaffNamecontroller='eliza';
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){},icon: Icon(Icons.category_rounded,color: iconcolor,),),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(onPressed: (){},icon: Icon(Icons.person_pin,color: iconcolor,),)
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 80,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            // width: getWidth(context)*0.90,
            height: getHeight(context)*0.06,
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
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 4,
        children: <Widget>[
         Card(
           child: Text('00.00'),
         ),
          Card(
            child: Text('00.00'),
          ), Card(
            child: Text('00.00'),
          ), Card(
            child: Text('00.00'),
          ), Card(
            child: Text('00.00'),
          ), Card(
            child: Text('00.00'),
          ), Card(
            child: Text('00.00'),
          ),





        ],
      ),

    );
  }
}
