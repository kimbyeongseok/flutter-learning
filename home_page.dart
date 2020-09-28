import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Color primary = Theme.of(context).primaryColor;
    void initState() {
      super.initState();
    }

    Widget logo() {
      return Padding(
        padding:
            EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.15),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 250,
          child: Stack(
            //'go'라는 문자와 하얀색 동그라미를 겹치기 위해 'stack' 위젯 사용
            children: [
              Positioned(
                child: Container(
                  child: Align(
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      width: 150,
                      height: 150,
                    ),
                  ),
                  height: 154,
                ),
              ),
              Positioned(
                child: Container(
                  height: 150,
                  child: Align(
                    child: Text(
                      'GO',
                      style: TextStyle(
                        fontSize: 120,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  width: MediaQuery.of(context).size.width * 0.15,
                  height: MediaQuery.of(context).size.height * 0.15,
                ),
                bottom: MediaQuery.of(context).size.height * 0.040,
                right: MediaQuery.of(context).size.width * 0.20,
              ),
              Positioned(
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  width: MediaQuery.of(context).size.width * 0.08,
                  height: MediaQuery.of(context).size.height * 0.08,
                ),
                bottom: MediaQuery.of(context).size.height * 0.002,
                right: MediaQuery.of(context).size.width * 0.32,
              ),
            ],
          ),
        ),
      );
    }

    void _loginSheet() {
      //state 클래스에 글로벌 키 등록 필요
      _scaffoldKey.currentState.showBottomSheet<void>((BuildContext context) {
        return DecoratedBox(
          decoration: BoxDecoration(
            color: Theme.of(context).canvasColor,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.1,
              color: Colors.white,
              child: ListView(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 10,
                          top: 10,
                          child: IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(
                              Icons.close,
                              size: 30,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    //SingleChildScrollView = a box in which a single widget can be scrolled.. 단일 위젯이 스크롤 만들어 위치하는 박스
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 140,
                          //login 글씨와 원형 박스를 겹치기 위해 stack 위젯 사용
                          child: Stack(
                            children: [
                              Positioned(
                                child: Align(
                                  child: Container(
                                    width: 130,
                                    height: 130,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                child: Container(
                                  child: Text(
                                    'LOGIN',
                                    style: TextStyle(
                                      fontSize: 48,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      });
    }

    Widget _button(String text, Color splashColor, Color highlightColor,
        Color fillColor, Color textColor, void function()) {
      return RaisedButton(
        highlightElevation: 0.0,
        splashColor: splashColor,
        elevation: 0.0,
        color: fillColor,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: textColor,
            fontSize: 20.0,
          ),
        ),
        onPressed: () {
          function();
        },
      );
    }

    return Scaffold(
      //키패드 활성화 시 화면 밀림 방지
      resizeToAvoidBottomPadding: false,
      key: _scaffoldKey,
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: [
          logo(),
          Padding(
            padding: EdgeInsets.only(top: 60, left: 20, right: 20),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              height: 50,
              child: _button('LOGIN', primary, Colors.white, Colors.white,
                  primary, _loginSheet),
            ),
          ),
        ],
      ),
    );
  }
}
