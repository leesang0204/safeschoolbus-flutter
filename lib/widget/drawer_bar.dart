import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('Drawer Header'),
                decoration: BoxDecoration(color: Colors.amberAccent),
              ),
              ListTile(
                  title: Text('Item 1'),
                  onTap: () {
                    Navigator.pop(context);
                  }),
              ListTile(
                  title: Text('Item 2'),
                  onTap: () {
                    Navigator.pop(context);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
