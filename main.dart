import 'package:flutter/material.dart';
import 'second_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'navigation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPage(),
    );
  }
}
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Next'),
          onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondPage()),
            );
          },
        ),
      ),
    );
  }
}
