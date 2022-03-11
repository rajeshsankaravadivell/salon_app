import 'package:flutter/material.dart';
import 'package:salon_app/constants/themeconstants.dart';
import 'package:salon_app/screens/add/addmainpage.dart';
import 'package:salon_app/screens/appointment.dart';
import 'package:salon_app/screens/calendar.dart';
import 'package:salon_app/screens/client/client.dart';
import 'package:salon_app/screens/expense/expensehome.dart';
import 'package:salon_app/screens/homepage.dart';
import 'package:salon_app/screens/marketing/marketinghome.dart';
import 'package:salon_app/screens/quicksale.dart';
import 'package:salon_app/screens/report/reporthome.dart';

import 'package:salon_app/screens/settings/settings/integerationhome.dart';
import 'package:salon_app/screens/settings/settings/settings.dart';

class BottomNavRouter extends StatefulWidget {
  const BottomNavRouter({Key? key}) : super(key: key);

  @override
  State<BottomNavRouter> createState() => _BottomNavRouterState();
}

class _BottomNavRouterState extends State<BottomNavRouter> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[

    HomePage(),
    QuidkSale(),
    Calendar(),
    Client(),
    Appointment(),
    AddMainPage(),
    ReportHome(),
    MarketingHome(),
    ExpenseHome(),
    Settings(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: getHeight(context)*0.1,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.redAccent,
              child: Image.network('https://cdn-icons-png.flaticon.com/512/2202/2202090.png',fit: BoxFit.fitWidth,),
            ),
          ),
        ],
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(

            decoration: InputDecoration(
              suffixIcon: const Icon(Icons.search,color: Colors.red,),


              labelText: 'Search',
              labelStyle:
              const TextStyle(
                fontFamily: 'Lexend Deca',
                color: Color(0xFF95A1AC),
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
              hintText: 'Type Your Text Here...',
              hintStyle:
              const TextStyle(
                fontFamily: 'Lexend Deca',
                color: Color(0xFF95A1AC),
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0xFFEE4E3A),
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(9),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0xFFEE4E3A),
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(9),
              ),
              filled: false,
              fillColor: const Color(0xFFFBEEE2),

            ),
            style:
            const TextStyle(
              fontFamily: 'Lexend Deca',
              color: Color(0xFF2B343A),
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        backgroundColor: Colors.white,

      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),


      bottomNavigationBar: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topRight: Radius.circular(100),topLeft: Radius.circular(100)),
        ),
        elevation: 5,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SizedBox(
            width: getWidth(context)*2,
            child: BottomNavigationBar(

              unselectedIconTheme: const IconThemeData(
                color: Colors.black54
              ),
              items: const [
                BottomNavigationBarItem(icon:Icon(Icons.home),label: 'Home'),
                BottomNavigationBarItem(icon:Icon(Icons.person_pin_rounded),label: 'Quick sales'),
                BottomNavigationBarItem(icon:Icon(Icons.calendar_today_rounded),label: 'Calendar'),
                BottomNavigationBarItem(icon:Icon(Icons.person),label: 'Client'),
                BottomNavigationBarItem(icon:Icon(Icons.more_time),label: 'Appointment'),
                BottomNavigationBarItem(icon:Icon(Icons.add_circle),label: 'Add'),
                BottomNavigationBarItem(icon:Icon(Icons.document_scanner_outlined),label: 'Report'),
                BottomNavigationBarItem(icon:Icon(Icons.card_travel),label: 'Marketing'),
                BottomNavigationBarItem(icon:Icon(Icons.money),label: 'Expense'),
                BottomNavigationBarItem(icon:Icon(Icons.settings),label: 'Setup'),



              ],
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.red,
              showUnselectedLabels: true,
              unselectedItemColor: Colors.black,
              unselectedLabelStyle: const TextStyle(color: Colors.black),
              onTap: _onItemTapped,
            ),
          ),
        ),
      ),



    );


  }
}
