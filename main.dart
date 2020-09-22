import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Layout'),
      ),
      //container widget basic============*
//      body: Container(
//        color:Colors.red,
//        width: 150,
//        height: 150,
//        padding: const EdgeInsets.all(8.0),
//        margin: const EdgeInsets.all(8.0),
//      ),
      //column widget=============*
//      body: Column(
//        children: [
//          Container(
//            color: Colors.red,
//            width: 100,
//            height: 100,
//            padding: const EdgeInsets.all(8.0),
//            margin: const EdgeInsets.all(8.0),
//          ),
//          Container(
//            color: Colors.yellow,
//            width: 100,
//            height: 100,
//            padding: const EdgeInsets.all(8.0),
//            margin: const EdgeInsets.all(8.0),
//          ),
//          Container(
//            color: Colors.green,
//            width: 100,
//            height: 100,
//            padding: const EdgeInsets.all(8.0),
//            margin: const EdgeInsets.all(8.0),
//          )
//        ],
//      ),
        //row widget=============*
//      body: Row(
////        mainAxisAlignment: MainAxisAlignment.center,
////        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//      mainAxisAlignment: MainAxisAlignment.spaceAround,
//        crossAxisAlignment: CrossAxisAlignment.center,
//        children: [
//        Container(
//            color: Colors.red,
//            width: 100,
//            height: 100,
//            padding: const EdgeInsets.all(8.0),
//            margin: const EdgeInsets.all(8.0),
//          ),
//          Container(
//            color: Colors.yellow,
//            width: 100,
//            height: 100,
//            padding: const EdgeInsets.all(8.0),
//            margin: const EdgeInsets.all(8.0),
//          ),
//          Container(
//            color: Colors.green,
//            width: 100,
//            height: 100,
//            padding: const EdgeInsets.all(8.0),
//            margin: const EdgeInsets.all(8.0),
//          )
//        ],
//      ),
    //stack widget=============*
      body: Stack(
        children: [
          Container(
            color: Colors.red,
            width: 200,
            height: 200,
            margin: const EdgeInsets.all(8.0),
          ),
          Container(
            color: Colors.yellow,
            width: 180,
            height: 180,
            margin: const EdgeInsets.all(8.0),
          ),
          Container(
            color: Colors.blue,
            width: 160,
            height: 160,
            margin: const EdgeInsets.all(8.0),
          ),
        ],
      ),
    );
  }
}


