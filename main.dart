import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'box layout',
      theme: ThemeData(
        primarySwatch: Colors.red,
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
        title: Text('Box Layout'),
      ),
      //*============center box================*
//      body: Center(
//        child: Container(
//          color: Colors.blue,
//          width: 100,
//          height: 100,
////        margin: const EdgeInsets.all(8.0),
//        ),
//      ),
      //*============padding box================*
//      body: Padding(
////        padding: const EdgeInsets.all(40.0),
////        padding: const EdgeInsets.only(left: 10,top: 20,bottom: 30,right: 40),
//        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
//        child: Container(
//          color: Colors.red,
//
//        ),
//      ),
      //*============Align box================*
//      body: Align(
////        alignment: Alignment.bottomLeft,
//      alignment: Alignment.topRight,
//        child: Container(
//          color: Colors.red,
//          width: 100,
//          height: 100,
//        ),
//      ),
      //*============Expanded box================*
//      body: Column(
//        children: [
//          Expanded(
//            flex: 1,
//            child: Container(
//              color: Colors.orange,
//            ),
//          ),
//          Expanded(
//            flex: 1,
//            child: Container(
//              color: Colors.green,
//            ),
//          ),
//          Expanded(
//            flex: 1,
//            child: Container(
//              color: Colors.blue,
//            ),
//          ),
//        ],
//      ),
    //*============Card box================*
//      body: Center(
//        child: Card(
//          child: Container(
//            width: 200,
//            height: 200,
////          color: Colors.black12,
//          ),
//          shape: RoundedRectangleBorder(
//            borderRadius: BorderRadius.circular(16.0)
//          ),
//          elevation: 4.0,
//        ),
//      ),
      //*============Raised button================*
//      body: Center(
//        child: RaisedButton(
//          child: Text('Raised Button'),
//          color: Colors.orange,
//          onPressed: (){}
//        ),
//      ),
      //*============Floating action button================*
       body: Center(
         child: FloatingActionButton(
           child: Icon(Icons.add),
           onPressed: (){},
         ),
       ),
    );
  }
}



