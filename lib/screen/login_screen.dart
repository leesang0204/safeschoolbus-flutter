import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => new _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool checkBoxValue = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.amberAccent,
      ),
      home: Scaffold(
        body: SafeArea(
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return Stack(
                children: <Widget>[
                  Positioned(
                    child: Container(
                      color: Colors.amberAccent,
                      width: MediaQuery.of(context).size.width * 1,
                      height: MediaQuery.of(context).size.height * 1,
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.2),
                            child: new Image.asset('images/ic_luncher.png',
                                scale: 3),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 20),
                            child: Text(
                              'SCHOOL BUS',
                              style: TextStyle(
                                color: Colors.brown,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              '우리 아이들을 위한 안전한 통학 버스',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: FlatButton(
                                onPressed: () {
                                  navigationPhoneAuthPage();
                                },
                                color: Colors.brown,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.all(15),
                                      child: Text(
                                        '회원가입',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              width: MediaQuery.of(context).size.width * 0.5,
                            ),
                            Container(
                              padding: EdgeInsets.only(bottom: 20, top: 10),
                              child: Text(
                                '스쿨버스 도입 학원에 등록한 휴대폰 번호만 사용할 수 있습니다',
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              child: FlatButton(
                                onPressed: () {
                                  navigationMainPage();
                                },
                                color: Colors.brown,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.all(15),
                                      child: Text(
                                        '둘러보기',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              width: MediaQuery.of(context).size.width * 0.5,
                            ),
                            Container(

                              padding: EdgeInsets.only(bottom: 40, top: 10),
                              child: Text('게스트로 기능을 살펴볼 수 있습니다.',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10)),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Checkbox(
                                    checkColor: Colors.amberAccent,
                                    activeColor: Colors.brown,
                                    value: checkBoxValue,
                                    onChanged: (value) {
                                      setState(() {
                                        checkBoxValue = value;
                                      });
                                    },
                                  ),

                                  InkWell(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(vertical: 10),
                                      child: Text(
                                        '스쿨버스 사용을 위하여 이용약관, 개인정보취급방침에 동의합니다.',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10),
                                      ),
                                    ),
                                    onTap: () {
                                      setState(() {
                                        navigationTermPage();
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Text(
                                'COPYRIGHT © SAFESCHOOLBUS. ALL RIGGHT RESERVED. SINCE 2018',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 8,
                                    color: Colors.black),
                              ),
                            )
                          ],
                        )),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  void navigationMainPage() {
    Navigator.of(context).pushNamed('/main');
  }

  void navigationTermPage() {
    Navigator.of(context).pushNamed('/term_screen');
  }

  void navigationPhoneAuthPage() {
    Navigator.of(context).pushNamed('/phone_auth_screen');
  }
}
