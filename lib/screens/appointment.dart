import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salon_app/constants/themeconstants.dart';
import 'package:salon_app/screens/appointment.dart';
import 'package:salon_app/screens/calendar.dart';
import 'package:salon_app/screens/quicksale.dart';
import 'package:salon_app/widgets/chart.dart';
import 'package:salon_app/widgets/chart2.dart';

class Appointment extends StatefulWidget {
  const Appointment({Key? key}) : super(key: key);

  @override
  _AppointmentState createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment>
    with TickerProviderStateMixin {
  late TabController _tabController1;

  @override
  void initState() {
    super.initState();
    _tabController1 = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0,top: 8.0),
            child: Card(
              shape: StadiumBorder(
                side: BorderSide(
                  color: Colors.redAccent,
                  width: 1.0,
                ),
              ),
              child: PopupMenuButton(

                icon: Icon(
                  CupertinoIcons.list_bullet,
                  color: iconcolor,
                ),
                itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                  PopupMenuItem(
                    child: ListTile(

                      title: Text('Today'),
                      onTap: () {

                      },
                    ),
                  ),
                  PopupMenuItem(
                    child: ListTile(

                      title: Text('7 Days'),
                      onTap: () {

                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
        bottom: PreferredSize(

          preferredSize: Size.fromHeight(50),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TabBar(
              controller: _tabController1,
              tabs: [
                Tab(
                  child: Text(
                    'Sales Insight',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Staff Insight',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController1,
        children: [
          ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
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
          ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
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

        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.asset,
    required this.title,
    required this.details,
  }) : super(key: key);

  final void Function()? onPressed;
  final String asset;
  final String title;
  final String details;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getHeight(context) * 0.10,
      width: getWidth(context) * 0.25,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: ElevatedButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0))),
                backgroundColor: MaterialStateProperty.all(Colors.white)),
            onPressed: () {},
            child: Padding(
              padding: EdgeInsets.all(getHeight(context) * 0.01.toDouble()),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    asset,
                    height: 30,
                    width: 30,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    details,
                    style: getText(context).bodyText2,
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
