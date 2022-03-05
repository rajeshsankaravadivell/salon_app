import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/screens/addblocktime.dart';

import '../constants/themeconstants.dart';
import 'generateappointment.dart';

class Client extends StatefulWidget {
  const Client({Key? key}) : super(key: key);

  @override
  State<Client> createState() => _ClientState();
}

class _ClientState extends State<Client> {

  bool _customTileExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight:70,
        backgroundColor: Colors.white,
        title: Text('Client',style: getText(context).button?.apply(fontSizeFactor: 1.5),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              shape: StadiumBorder(
      side: BorderSide(
        color: Colors.redAccent,
        width: 1.0,
      ),
    ),
              child: PopupMenuButton(
                icon: Icon(
                  CupertinoIcons.search,
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
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              shape: StadiumBorder(
                side: BorderSide(
                  color: Colors.redAccent,
                  width: 1.0,
                ),
              ),
              child: PopupMenuButton(
                icon: Icon(
                  CupertinoIcons.list_bullet_indent,
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
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              shape: StadiumBorder(
                side: BorderSide(
                  color: Colors.redAccent,
                  width: 1.0,
                ),
              ),
              child: PopupMenuButton(
                icon: Icon(
                  CupertinoIcons.person_crop_circle_badge_plus,
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
            ),
          ),

        ],

      ),
      body:ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context,int index){
          return Card(
            child: SizedBox(
              width: getHeight(context)*0.90,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(

                    ),
                  ),
                 Table(
                   columnWidths: const <int, TableColumnWidth>{
                     0: IntrinsicColumnWidth(),
                     1: FlexColumnWidth(),
                     2: FlexColumnWidth(),
                   },
                   defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                   children: <TableRow>[
                     TableRow(
                       children: <Widget>[
                        Text('Name'),
                         Text('Name'),
                         Text('Name'),

                       ],
                     ),
                     TableRow(
                       decoration: const BoxDecoration(
                         color: Colors.grey,
                       ),
                       children: <Widget>[
                         Container(
                           height: 64,
                           width: 128,
                           color: Colors.purple,
                         ),
                         Container(
                           height: 32,
                           color: Colors.yellow,
                         ),
                         Center(
                           child: Container(
                             height: 32,
                             width: 32,
                             color: Colors.orange,
                           ),
                         ),
                       ],
                     ),
                   ],



                 ),
                ],
              ),
            ),

          );
          //   Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: ListTile(
          //     dense: false,
          //     leading: CircleAvatar(
          //       radius: 30,
          //
          //
          //       child: Image.network('https://cdn-icons-png.flaticon.com/512/145/145843.png',),
          //     ),
          //   ),
          // );
        
      },
      ),
    );
  }
}
