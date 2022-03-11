import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salon_app/constants/themeconstants.dart';
import 'package:salon_app/screens/appointment.dart';
import 'package:salon_app/screens/calendar.dart';
import 'package:salon_app/screens/quicksale.dart';
import 'package:salon_app/widgets/chart.dart';
import 'package:salon_app/widgets/chart2.dart';

class AddMainPage extends StatefulWidget {
  const AddMainPage({Key? key}) : super(key: key);

  @override
  _AddMainPageState createState() => _AddMainPageState();
}

class _AddMainPageState extends State<AddMainPage>
    with TickerProviderStateMixin {
  late TabController _tabController1;
  late TabController _tabController2;
  int index = 3;

  @override
  void initState() {
    super.initState();
    _tabController1 = TabController(length: 2, vsync: this);
    _tabController2 = TabController(length: 2, vsync: this);
  }

  getWidgets(int index) {
    switch (index) {
      case 0:
      // ignore: prefer_const_constructors
        return Scaffold(backgroundColor: Colors.red,);
      case 1:
        return Scaffold(backgroundColor: Colors.red,);
      case 2:
        return Scaffold(backgroundColor: Colors.red,);
      case 3:
        return TabBarView(

          controller: _tabController1,
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 10,
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
                              0: FixedColumnWidth(
                                  getWidth(context) * 0.20),
                              1: FixedColumnWidth(
                                  getWidth(context) * 0.35),
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
              // scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 10,
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
                              0: FixedColumnWidth(
                                  getWidth(context) * 0.20),
                              1: FixedColumnWidth(
                                  getWidth(context) * 0.35),
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
        );
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(

        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
           title: Padding(
             padding: const EdgeInsets.all(8.0),
             child: SizedBox(
               height: getHeight(context)*0.10,
               child: TabBar(
                 labelColor: Colors.white,
                 unselectedLabelColor:Colors.red,

                 indicator:  BoxDecoration(
                     borderRadius: BorderRadius.all(Radius.circular(10.0)),

                     color: Colors.redAccent

                 ),
                 controller: _tabController1,
                 tabs: const [
                   Tab(
                     child: Text(
                       'Staff',
                       style: TextStyle(
                           fontSize: 20, fontWeight: FontWeight.bold),
                     ),
                   ),
                   Tab(
                     child: Text(
                       'Services',
                       style: TextStyle(
                           fontSize: 20, fontWeight: FontWeight.bold),
                     ),
                   ),
                 ],
               ),
             ),
           ),

            pinned: false,
            snap: false,
            floating: true,
            expandedHeight: 100.0,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(15),
              child:SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ChoiceChip(

                      label: Text('Choice 1'),
                      selected: true,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 2.0,right: 2.0),
                      child: ChoiceChip(

                        label: Text('Choice 1'),
                        selected: false,
                      ),
                    ),


                  ],
                ),
              )
            ),
          ),

          SliverToBoxAdapter(
            child: SizedBox(
              height: getHeight(context)*2,
              child: getWidgets(index),
            )
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
