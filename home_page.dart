import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  TextEditingController _nameController = new TextEditingController();

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

//    _input(Icon(Icons.email), "EMAIL", _emailController, false),
    Widget _input(Icon icon, String hint, TextEditingController controller, bool obsecure){
      return Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: TextField(
          controller: controller,
          obscureText: obsecure,
          style: TextStyle(
            fontSize: 20,
          ),
          decoration: InputDecoration(
            hintStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            hintText: hint,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                color: Theme.of(context).primaryColor,
                width: 2,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                color: Theme.of(context).primaryColor,
                width: 3,
              ),
            ),
            prefixIcon: Padding(
              padding: EdgeInsets.only(left: 30, right: 10),
              child: IconTheme(
                data: IconThemeData(
                  color: Theme.of(context).primaryColor,
                ),
                child: icon,
              ),
            ),
          ),
        ),
      );
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

    void _loginUser(){
      _emailController.clear();
      _passwordController.clear();
    }

    void _registerUser(){
      _emailController.clear();
      _passwordController.clear();
      _nameController.clear();
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
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
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
                                      fontSize: 38,
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
                        Padding(
                          padding: EdgeInsets.only(bottom: 20, top: 60),
                          child: _input(Icon(Icons.email), "EMAIL", _emailController, false),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: _input(Icon(Icons.lock), 'PASSWARD', _passwordController, true),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 20, bottom: MediaQuery.of(context).viewInsets.bottom),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            child: _button('LOGIN', Colors.white, primary, primary, Colors.white, _loginUser),
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
    }//*========login sheet==========*

    void _registerSheet(){
      _scaffoldKey.currentState.showBottomSheet<void>((BuildContext context){
        return DecoratedBox(
          decoration: BoxDecoration(
            color: Theme.of(context).canvasColor,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0)
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.1,
              color: Colors.white,
              child: ListView(
                children: [
                  Container(
                    child: Stack(
                     children: [
                       Positioned(
                         left: 10,
                         top: 10,
                         child: IconButton(
                           onPressed: (){
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
                    height: 50,
                    width: 50,
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 140,
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
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.only(bottom: 25, right: 40),
                                  child: Text(
                                    'REGI',
                                    style: TextStyle(
                                      fontSize: 44,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                child: Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.only(top: 40, left: 28),
                                  child: Text(
                                    'STER',
                                    style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: 20,
                            top: 60,
                          ),
                          child: _input(Icon(Icons.account_circle), 'DISPLAY NAME', _nameController, false),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: 20,
                          ),
                          child: _input(Icon(Icons.email), 'E-MAIL', _emailController, false),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: 20,
                          ),
                          child: _input(Icon(Icons.lock), 'PASSWORD', _passwordController, false),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 20,
                              right: 20,
                              bottom: MediaQuery.of(context).viewInsets.bottom,
                          ),
                          child: Container(
                            child: _button('REGISTER', Colors.white, primary, primary, Colors.white, _registerUser),
                            height: 50,
                            width: MediaQuery.of(context).size.width,
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
      });//scaffoldKey
    }//*========register sheet==========*

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
          //===Register button===
          Padding(
            padding: EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              child: OutlineButton(
                highlightedBorderColor: Colors.white,
                borderSide: BorderSide(color: Colors.white, width: 2,),
                highlightElevation: 0.0,
                splashColor: Colors.white,
                highlightColor: Theme.of(context).primaryColor,
                color: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  'REGISTER',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                onPressed: (){
                  _registerSheet();
                },
              ),
              height: 50,
            ),
          ),
        ],
      ),
    );
  }
}
