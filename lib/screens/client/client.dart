import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon_app/screens/addblocktime.dart';
import 'package:salon_app/screens/client/addclient.dart';

import '../../constants/themeconstants.dart';
import '../generateappointment.dart';

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
        elevation: 0,
        toolbarHeight: 70,
        backgroundColor: Colors.white,
        title: Text(
          'Client',
          style: getText(context).button?.apply(fontSizeFactor: 1.5),
        ),
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
                      leading: Icon(
                        Icons.add,
                        color: iconcolor,
                      ),
                      title: Text('Import Client'),
                      onTap: () {

                      },
                    ),
                  ),
                  PopupMenuItem(
                    child: ListTile(
                      leading: Icon(
                        Icons.add,
                        color: iconcolor,
                      ),
                      title: Text('Export'),
                      onTap: () {

                      },
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
                      leading: Icon(
                        Icons.add,
                        color: iconcolor,
                      ),
                      title: Text('Import Client'),
                      onTap: () {

                      },
                    ),
                  ),
                  PopupMenuItem(
                    child: ListTile(
                      leading: Icon(
                        Icons.add,
                        color: iconcolor,
                      ),
                      title: Text('Export'),
                      onTap: () {

                      },
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
              child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                            side: BorderSide(color: Colors.red)))),
                onPressed: () {
                  Get.to(AddClient());
                },
                child: Icon(CupertinoIcons.person_crop_circle_badge_plus),
              ),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(
                left: 16.0, right: 16.0, bottom: 4.0, top: 4.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18)),
              elevation: 3.0,
              child: SizedBox(
                width: getHeight(context) * 0.90,
                height: getHeight(context) * 0.18,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: CircleAvatar(
                        radius: getWidth(context) * 0.08,
                        child: Image.network(
                            'https://previews.123rf.com/images/metelsky/metelsky1904/metelsky190400021/121859823-male-avatar-icon-or-portrait-handsome-young-man-face-with-beard-vector-illustration-.jpg'),
                      ),
                    ),
                    Table(
                      // border: TableBorder.all(color: Colors.redAccent,borderRadius: BorderRadius.circular(20)),
                      columnWidths: <int, TableColumnWidth>{
                        0: FixedColumnWidth(getWidth(context) * 0.20),
                        1: FixedColumnWidth(getWidth(context) * 0.35),
                        // 2: FixedColumnWidth(64),
                      },
                      defaultVerticalAlignment:
                          TableCellVerticalAlignment.middle,
                      children: <TableRow>[
                        TableRow(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Name     :'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Benial'),
                            ),
                          ],
                        ),
                        TableRow(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Contact  :'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('89401123467'),
                            ),
                          ],
                        ),
                        TableRow(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Email      :'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('raj@gmail.com'),
                            ),
                          ],
                        ),
                        TableRow(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Note       :'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Need services'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
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
