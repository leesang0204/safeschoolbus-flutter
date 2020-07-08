import 'package:flutter/material.dart';


class Top extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Container(
        height: 50,
        child: TabBar(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white60,
          indicatorColor: Colors.transparent,
          tabs: <Widget>[
            Tab(
              icon: Icon(
                Icons.home,
                size: 18,
              ),
              child: Text(
                '홈',
                style: TextStyle(fontSize: 9),),
            ),
            Tab(
              icon: Icon(
                Icons.directions_bus,
                size: 18,
              ),
              child: Text(
                '노선도',
                style: TextStyle(fontSize: 9),),
            ),
            Tab(
              icon: Icon(
                Icons.map,
                size: 18,
              ),
              child: Text(
                '지도',
                style: TextStyle(fontSize: 9),),
            ),
          ],
        ),
      ),
    );
  }
}