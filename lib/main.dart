import 'package:flutter/material.dart';

void main() {
  runApp(const Tab1());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: AppBar(

              title: Text(
                "Tabbr Demo",
              ),
              bottom:

              TabBar(
                 // indicatorColor:Colors.yellow,
                  //indicatorWeight:3.0,
                  //indicatorSize:TabBarIndicatorSize.label,
                //  indicatorSize: TabBarIndicatorSize.tab,
                 // labelColor: Colors.red,
              /*    labelStyle:TextStyle(fontSize: 10.0,
                  color: Colors.blueGrey),*/

                 // isScrollable: false,
                 // unselectedLabelColor: Colors.red,
                indicator: BoxDecoration(
                  color: Colors.red,
                    borderRadius: BorderRadius.circular(10.0)

                ),

                  tabs: [

                Tab(
                  icon: Icon(Icons.home),
                  text: "Home",
                ),
                Tab(icon: Icon(Icons.map), text: "Map"),
                Tab(icon: Icon(Icons.search), text: "Search"),
                Tab(icon: Icon(Icons.business), text: "Business")


              ]),
            ),
            body: TabBarView(
              children: <Widget>[
                Center(
                  child: Text("It, Home "),
                ),
                Center(
                  child: Text("It, Map"),
                ),
                Center(
                  child: Text("It, Search"),
                ), Center(
                  child: Text("It, Business"),
                ),

              ],
            ),
          ),
        ));
  }
}

class Tab1 extends StatefulWidget {
  const Tab1({Key? key}) : super(key: key);

  @override
  _Tab1State createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> with SingleTickerProviderStateMixin{
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController= TabController(length: 4, vsync: this);
    _tabController.addListener(() { });
  }
  @override
  void dispose() {
 _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("TabBar"),
          bottom: TabBar(
            controller: _tabController,
            tabs: [

              Tab(
              icon: Icon(Icons.home),
              text: "Home",
            ),
              Tab(icon: Icon(Icons.map), text: "Map"),
              Tab(icon: Icon(Icons.search), text: "Search"),
              Tab(icon: Icon(Icons.business), text: "Business")],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
          Center(
            child: Text("It, Home "),
          ),
          Center(
            child: Text("It, Map"),
          ),
          Center(
            child: Text("It, Search"),
          ), Center(
            child: Text("It, Business"),
          ),

        ],),
      ),

    );
  }
}

