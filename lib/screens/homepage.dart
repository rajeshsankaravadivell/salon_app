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
                              children:  const [
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
                        height: getHeight(context) *1.5,

                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              children:  const [
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
                  Flexible(
                    flex: 1,
                    child: Text(
                      title,
                      style: TextStyle(fontSize:13, color: Colors.black, ),
                      textAlign: TextAlign.center,
                    ),
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
