import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:safeschoolbus_flutter/screen/home_screen.dart';
import 'package:safeschoolbus_flutter/screen/map_screen.dart';
import 'package:safeschoolbus_flutter/screen/route_map_screen.dart';
import 'package:safeschoolbus_flutter/widget/drawer_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.amber,
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          key: _scaffoldKey,
          drawer: DrawerBar(),
          appBar: AppBar(
            centerTitle: true,
            title: Container(
              child: Text(
                '스쿨버스',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
            leading: IconButton(
              icon: new Image.asset('images/ic_navigation.png'),
              onPressed: () =>
                  _scaffoldKey.currentState.openDrawer(), // drawer icon 커스텀
            ),
          ),
          body: Column(
            children: <Widget>[
              Container(
                color: Colors.white,
                child: TabBar(
                  tabs: <Widget>[
                    Tab(text: "홈"),
                    Tab(text: "노선도"),
                    Tab(text: "지도")
                  ],
                  indicatorColor: Colors.amber,
                  unselectedLabelColor: Colors.black,
                  labelColor: Colors.amber,
                ),
              ),
              Expanded(
                flex: 3,
                child: TabBarView(
                  children: <Widget>[
                    HomeScreen(),
                    RouteMapScreen(),
                    MapScreen()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
