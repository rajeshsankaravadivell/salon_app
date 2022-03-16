import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salon_app/constants/themeconstants.dart';
import 'package:salon_app/screens/appointment.dart';
import 'package:salon_app/screens/calendar.dart';
import 'package:salon_app/screens/quicksale.dart';
import 'package:salon_app/screens/settings/account%20setup/accountsetup.dart';
import 'package:salon_app/screens/settings/settings/integeration.dart';
import 'package:salon_app/screens/settings/settings/integerationhome.dart';
import 'package:salon_app/screens/settings/point%20of%20sale/pointofsale.dart';
import 'package:salon_app/widgets/chart.dart';
import 'package:salon_app/widgets/chart2.dart';

class MarketingHome extends StatefulWidget {
  const MarketingHome({Key? key}) : super(key: key);

  @override
  _MarketingHomeState createState() => _MarketingHomeState();
}

class _MarketingHomeState extends State<MarketingHome> with TickerProviderStateMixin {
  late TabController _tabController1;
  String? radioButtonValue1;
  TextEditingController? textController1;
  TextEditingController? textController2;
  String? radioButtonValue2;
  TextEditingController? textController3;
  TextEditingController ?textController4;
  TextEditingController ?textController5;
  TextEditingController ?textController6;

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
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(20),
            child: Card(
              child: TabBar(
                controller: _tabController1,
                tabs: const [
                  Tab(
                    child: Text(
                      'REFERRAL SYSTEM',
                      style:
                      TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'GIFT CARD',
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),

                ],
              ),
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          title: Text('Add',style: getText(context).headline6,)

      ),
      body: TabBarView(
        controller: _tabController1,
        children:  [
          SizedBox(
            height: getHeight(context) *1.5,

            child:Padding(
              padding: EdgeInsetsDirectional.fromSTEB(
                  16, 0, 16, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                        EdgeInsetsDirectional.fromSTEB(
                            16, 16, 16, 16),
                        child: Text(
                          'Refer A Friend',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFF192029),
                          ),
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(onPressed: (){}, child: Text('Apply')),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                        16, 20, 16, 16),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Refer Offer',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFF192029),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                        16, 16, 16, 16),
                    child: TextFormField(
                      controller: textController1,
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: 'Offer Amount',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x75EE4E3A),
                            width: 1,
                          ),
                          borderRadius:
                          const BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x75EE4E3A),
                            width: 1,
                          ),
                          borderRadius:
                          const BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                        ),
                      ),
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xFF707070),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                        16, 8, 16, 8),
                    child: TextFormField(
                      controller: textController2,
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: 'Min Purchase Amount',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x75EE4E3A),
                            width: 1,
                          ),
                          borderRadius:
                          const BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x75EE4E3A),
                            width: 1,
                          ),
                          borderRadius:
                          const BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                        ),
                      ),
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xFF707070),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                        16, 16, 16, 16),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Social Sharing',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFF192029),
                          ),
                        ),
                      ],
                    ),
                  ),
                 ElevatedButton(onPressed: (){}, child: Text('Button')),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                        16, 16, 16, 16),
                    child: TextFormField(
                      controller: textController3,
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: 'Default Share Text',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x75EE4E3A),
                            width: 1,
                          ),
                          borderRadius:
                          const BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x75EE4E3A),
                            width: 1,
                          ),
                          borderRadius:
                          const BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                        ),
                      ),
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xFF707070),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
              height: getHeight(context) *1.2,
              child:SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10, 10, 10, 10),
                          child: ElevatedButton(onPressed: (){},child: Text('button'),),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10, 10, 10, 10),
                          child: ElevatedButton(onPressed: (){},child: Text('button'),),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10, 10, 10, 10),
                          child: ElevatedButton(onPressed: (){},child: Text('button'),),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          16, 16, 16, 16),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Gift Card',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF192029),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          16, 16, 16, 16),
                      child: TextFormField(
                        controller: textController4,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Search Field',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x75EE4E3A),
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x75EE4E3A),
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                        ),
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF707070),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          16, 16, 16, 16),
                      child: TextFormField(
                        controller: textController5,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Search value',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x75EE4E3A),
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x75EE4E3A),
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                        ),
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF707070),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          16, 16, 16, 16),
                      child: TextFormField(
                        controller: textController6,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Outstansing',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x75EE4E3A),
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x75EE4E3A),
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                        ),
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF707070),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          16, 16, 16, 16),
                      child: ElevatedButton(onPressed: (){},child: Text('button'),),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          16, 16, 16, 16),
                      child: Container(
                        width: 300,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
                          border: Border.all(
                            color: Color(0xFFEE4E3A),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(
                                  8, 8, 150, 8),
                              child: Text(
                                'Purchase Rate',

                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(
                                  8, 8, 200, 8),
                              child: Text(
                                'GC No',

                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(
                                  8, 8, 200, 8),
                              child: Text(
                                'From',

                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(
                                  8, 8, 200, 8),
                              child: Text(
                                'To',
                                textAlign: TextAlign.start,
                              

                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ),

        ],
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
