import 'package:flutter/material.dart';
import 'main.dart';
class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('second'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Next'),
          onPressed: (){
            Navigator.pop(
              context
            );
          },
        ),
      ),
    );
  }
}
