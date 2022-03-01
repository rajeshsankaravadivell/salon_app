import 'package:flutter/material.dart';
import 'package:salon_app/constants/themeconstants.dart';
import 'package:salon_app/widgets/chart.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin{
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
        backgroundColor: Colors.white,
      ),
       
      body: SingleChildScrollView(
        child: Column(
          children: [

            SizedBox(
              height: getHeight(context)*0.50,
              width:getWidth(context)*1,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                child: Scaffold(
                  appBar: AppBar(
                    backgroundColor: Colors.white,
                    automaticallyImplyLeading: false,
                    title: TabBar(
                      controller: _tabController1,
                      tabs: [
                        Tab(
                          icon: Icon(Icons.cloud_outlined),
                        ),
                        Tab(
                          icon: Icon(Icons.beach_access_sharp),
                        ),
                      ],


                    ),
                  ),
                  body:TabBarView(controller: _tabController1,
                    children: [

                      Center(
                        child: Text("It's cloudy here"),
                      ),
                      Center(
                        child: Text("It's rainy here"),
                      ),

                    ],


                  ),

                ),
              ),
            ),
            SizedBox(
              height: getHeight(context)*0.50,
              width:getWidth(context)*1,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                child: Scaffold(
                  appBar: AppBar(
                    backgroundColor: Colors.white,
                    automaticallyImplyLeading: false,
                    title: TabBar(
                      controller: _tabController1,
                      tabs: [
                        Tab(
                          icon: Icon(Icons.cloud_outlined),
                        ),
                        Tab(
                          icon: Icon(Icons.beach_access_sharp),
                        ),
                      ],


                    ),
                  ),
                  body:TabBarView(controller: _tabController1,
                    children: [

                      Center(
                        child: Text("It's cloudy here"),
                      ),
                      Center(
                        child: Text("It's rainy here"),
                      ),

                    ],


                  ),

                ),
              ),
            ),
            SizedBox(
              height: getHeight(context)*0.50,
              width:getWidth(context)*1,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                child: Scaffold(
                  appBar: AppBar(
                    backgroundColor: Colors.white,
                    automaticallyImplyLeading: false,
                    title: TabBar(
                      controller: _tabController1,
                      tabs: [
                        Tab(
                          icon: Icon(Icons.cloud_outlined),
                        ),
                        Tab(
                          icon: Icon(Icons.beach_access_sharp),
                        ),
                      ],


                    ),
                  ),
                  body:TabBarView(controller: _tabController1,
                    children: [

                      Center(
                        child: Text("It's cloudy here"),
                      ),
                      Center(
                        child: Text("It's rainy here"),
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

