import 'package:flutter/material.dart';
void main(){
  runApp(new MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title: 'welcome to the my first app',
      home:new Scaffold(
        appBar:new AppBar(
          title:const Text("Best app")
        ),
        body:const Center(
          child:const Text('Hello World', style: TextStyle(fontSize: 40.0))
        ),
      ),
    );
  }
}
