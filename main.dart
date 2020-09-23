import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animation',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HeroPage(),
    );
  }
}
class HeroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Effect'),
      ),
      body: Center(
        child:GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ContainerPage())
            );
          },
          child: Hero(
            tag: 'image',
            child: Image.asset(
              'assets/test_image.png',
              width: 100,
              height: 100,
            ),
          ),
        ),
      ),
    );
  }
}
class ContainerPage extends StatefulWidget {
  @override
  _ContainerPageState createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  var _size=100.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body:Center(
        child: GestureDetector(
          onTap: (){
            final random = Random();
            setState(() {
              _size=random.nextInt(200).toDouble()+100;
            });
          },
          child: AnimatedContainer(
            duration: Duration(
              seconds: 1,
            ),
            width:_size,
            height:_size,
            child: Image.asset('assets/test_image.png'),
            curve:Curves.fastOutSlowIn,
          ),
        ),
      )
    );
  }
}

