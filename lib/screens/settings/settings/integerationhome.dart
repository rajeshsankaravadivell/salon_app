import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/constants/themeconstants.dart';
import 'package:salon_app/screens/settings/settings/integerationform.dart';



class IntegerationHome extends StatefulWidget {
  const IntegerationHome({Key? key}) : super(key: key);

  @override
  State<IntegerationHome> createState() => _IntegerationHomeState();
}

class _IntegerationHomeState extends State<IntegerationHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: GridView.count(
        primary: false,
        // padding: const EdgeInsets.all(16),
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
        crossAxisCount: 3
        ,
        children: <Widget>[
          // Generated code for this Card Widget...
          GestureDetector(
            onTap: (){
              Get.to(InteregerationForm());
            },
            child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              color: Color(0xFFF5F5F5),
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(
                      'https://cdn-icons-png.flaticon.com/512/5968/5968848.png',
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.1,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    'Hello World',
                    style: getText(context).bodyText1,
                  ),
                ],
              ),
            ),
          ),
          


        ],
      )

    );
  }
}
