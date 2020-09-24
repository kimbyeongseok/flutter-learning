import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic UI',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey
      ),
      home: BasicUI(),
    );
  }
}
class BasicUI extends StatefulWidget {
  @override
  _BasicUIState createState() => _BasicUIState();
}

class _BasicUIState extends State<BasicUI> {

  var _index = 0;
  var _pages = [
    Page1(),
    Page2(),
    Page3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Basic_UI',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,//텍스트 중앙 위치
        actions: [
          IconButton(
            icon: Icon(
              Icons.add,
              color: Colors.black,
            ),
            onPressed: (){
            },
          )
        ],
      ),
      body: _pages[_index],//변수 _pages 배열 안에 _index 번째 페이지 호출
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            _index = index;//탭이 이루어진 인덱스로 _index 변수를 변
          });
        },
        currentIndex: _index,
        items: [
          BottomNavigationBarItem(
            title: Text('Home'),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text('User Services'),
            icon: Icon(Icons.assignment),
          ),
          BottomNavigationBarItem(
            title: Text('Info'),
            icon: Icon(Icons.account_circle),
          ),
        ],
      ),
    );
  }
}
class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTop(),
        _buildMiddle(),
        _buildBottom(),
      ],
    );
  }
  Widget _buildTop(){
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(Icons.local_taxi, size: 40,),
                  Text('Taxi'),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.local_taxi, size: 40,),
                  Text('Taxi'),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.local_taxi, size: 40,),
                  Text('Taxi'),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.local_taxi, size: 40,),
                  Text('Taxi'),
                ],
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(Icons.local_taxi, size: 40,),
                  Text('Taxi'),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.local_taxi, size: 40,),
                  Text('Taxi'),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.local_taxi, size: 40,),
                  Text('Taxi'),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.local_taxi, size: 40,),
                  Text('Taxi'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
  Widget _buildMiddle(){
    return Text('Middle');
  }
  Widget _buildBottom(){
    return Text('Bottom');
  }
}
class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'User Services',
        style: TextStyle(fontSize: 40),),
    );
  }
}
class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Information',
        style: TextStyle(fontSize: 40),),
    );
  }
}

