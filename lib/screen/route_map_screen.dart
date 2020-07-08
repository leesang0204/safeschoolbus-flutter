import 'package:flutter/material.dart';

class RouteMapScreen extends StatefulWidget {
  @override
  _RouteMapScreenState createState() => new _RouteMapScreenState();
}

class _RouteMapScreenState extends State<RouteMapScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white60,
      body: new Center(
        child: new Text('노선도 화면'),
      ),
    );
  }
}