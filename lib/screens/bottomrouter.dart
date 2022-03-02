import 'package:flutter/material.dart';
import 'package:salon_app/screens/appointment.dart';
import 'package:salon_app/screens/calendar.dart';
import 'package:salon_app/screens/homepage.dart';
import 'package:salon_app/screens/quicksale.dart';

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
    Appointment(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon:Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon:Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon:Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon:Icon(Icons.home),label: 'Home'),



        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black,
        unselectedLabelStyle: TextStyle(color: Colors.black),
        onTap: _onItemTapped,
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),

    );


  }
}
