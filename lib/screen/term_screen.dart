import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:safeschoolbus_flutter/assets//strings.dart';
import 'package:safeschoolbus_flutter/assets/colors.dart';

class TermScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.amberAccent,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(Strings.app_title,style: TextStyle(color: Colors.white),),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white,),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Container(
          color: AppColors.background,
          child: SafeArea(
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(top: 20, left: 10),
                  child: Text(
                    Strings.user_terms_title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    color: Colors.white,
                    child: SingleChildScrollView(
                      child: Text(Strings.user_policy),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: Text(
                    Strings.user_policy_titel,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    color: Colors.white,
                    child: SingleChildScrollView(
                      child: Text(Strings.user_policy),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
