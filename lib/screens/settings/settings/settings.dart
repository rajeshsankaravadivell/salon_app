import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salon_app/constants/themeconstants.dart';
import 'package:salon_app/screens/appointment.dart';
import 'package:salon_app/screens/calendar.dart';
import 'package:salon_app/screens/quicksale.dart';
import 'package:salon_app/screens/settings/account%20setup/accountsetup.dart';
import 'package:salon_app/screens/settings/settings/integeration.dart';
import 'package:salon_app/screens/settings/settings/integerationhome.dart';
import 'package:salon_app/screens/settings/settings/pointofsale.dart';
import 'package:salon_app/widgets/chart.dart';
import 'package:salon_app/widgets/chart2.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> with TickerProviderStateMixin {
  late TabController _tabController1;

  @override
  void initState() {
    super.initState();
    _tabController1 = TabController(length: 3, vsync: this);

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(20),
          child: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor:Colors.red,

            indicator:  BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(100.0)),

                color: Colors.redAccent

            ),

            controller: _tabController1,
            tabs: const [
              Tab(
                child: Text(
                  'Account Setup',
                  textAlign: TextAlign.center,
                  style:
                  TextStyle(


                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  'Point Of Sale',
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  'Integration',
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Setup',style: getText(context).headline6,),
        )
          
      ),
      body: TabBarView(
        controller: _tabController1,
        children:  [
          SizedBox(
              height: getHeight(context) *1.5,

              child:AccountSetup(),
          ),
          SizedBox(
              height: getHeight(context) *1.2,
              child:PointOfSale()
          ),
          SizedBox(
              height: getHeight(context) *1.2,
              child:Integeration()
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
