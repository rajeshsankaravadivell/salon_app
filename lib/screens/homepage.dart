import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salon_app/constants/themeconstants.dart';
import 'package:salon_app/screens/appointment.dart';
import 'package:salon_app/screens/calendar.dart';
import 'package:salon_app/screens/quicksale.dart';
import 'package:salon_app/widgets/chart.dart';
import 'package:salon_app/widgets/chart2.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabController1;

  @override
  void initState() {
    super.initState();
    _tabController1 = TabController(length: 2, vsync: this);

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SizedBox(
                width: getWidth(context)*1.2,
                height: getHeight(context)*0.15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [
                    CustomButton(
                      onPressed: (){},
                      title: 'Income',
                      details: '50',
                      asset: 'assets/income.png',

                    ),
                    CustomButton(
                      onPressed: (){},
                      asset: 'assets/deadline.png',
                      title: 'Income',
                      details: '200',


                    ),
                    CustomButton(
                      onPressed: (){},
                      title: 'Income',
                      details: '200',
                      asset: 'assets/client.png',

                    ), CustomButton(
                      onPressed: (){},
                      title: 'Income',
                      details: '200',
                      asset: 'assets/settings.png',

                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: getHeight(context) *1.2,
              width: getWidth(context) * 1,
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Scaffold(
                  backgroundColor: Colors.transparent,
                  appBar: AppBar(
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    automaticallyImplyLeading: false,
                    title: Card(
                      child: TabBar(
                        controller: _tabController1,
                        tabs: const [
                          Tab(
                            child: Text(
                              'Sales Insight',
                              style:
                              TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Staff Insight',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  body: TabBarView(
                    controller: _tabController1,
                    children:  [
                      SizedBox(
                        height: getHeight(context) *1.5,

                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              children:  [
                                Flexible(
                                  flex:
                                  1,
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Card(child: LineChartSample2()),
                                  ),
                                ),
                                Flexible(
                                  flex:
                                  1,
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Card(child: LineChartSample2()),
                                  ),
                                ),
                                Flexible(
                                  flex:
                                  1,
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Card(child: LineChartSample2()),
                                  ),
                                ),
                                Flexible(
                                  flex:
                                  1,
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Card(child: LineChartSample2()),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: getHeight(context) *1.2,
                        child: Center(
                          child: Text("It's rainy here"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,required this.onPressed,required this.asset, required this.title, required this.details,
  }) : super(key: key);

  final void Function()? onPressed;
  final String asset;
  final String title;
  final String details;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getHeight(context)*0.10,
      width: getWidth(context)*0.25,
      child: Padding(
        padding: const EdgeInsets.all( 2.0),
        child: ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
              )),
                backgroundColor:
                    MaterialStateProperty.all(Colors.white)),
            onPressed: () {},
            child: Padding(
              padding:  EdgeInsets.all(getHeight(context)*0.01.toDouble()),
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
                    style: TextStyle(fontSize:13, color: Colors.black, ),
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
