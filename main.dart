import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scroll View',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
    );
  }
}
//*===========single child scroll view============*
//class HomePage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    final items = List.generate(100, (i) => i).toList();
//    //https://api.flutter.dev/flutter/dart-core/List/List.generate.html
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Single Child Scroll View'),
//      ),
//      body: SingleChildScrollView(
//        child: ListBody(
//          children: items.map((i)=>Text('$i')).toList(),
//        ),
//      ),
//    );
//  }
//}
//*==================List View=====================*
//class HomePage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('List View'),
//      ),
//      body:ListView(
//        children: [
//          ListTile(
//            leading: Icon(Icons.home),
//            title: Text('Home'),
//            trailing: Icon(Icons.navigate_next),
//            onTap: (){},
//          ),
//          ListTile(
//            leading: Icon(Icons.event),
//            title: Text('Event'),
//            trailing: Icon(Icons.navigate_next),
//            onTap: (){},
//          ),
//          ListTile(
//            leading: Icon(Icons.camera),
//            title: Text('Camera'),
//            trailing: Icon(Icons.navigate_next),
//            onTap: (){},
//          ),
//        ],
//      ),
//    );
//  }
//}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Tap Bar View')),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.tag_faces)),
              Tab(text:'Menu2'),
              Tab(icon: Icon(Icons.info)),
            ],
          ),
        ),
        body:TabBarView(
          children: [
            Container(color: Colors.red),
            Container(color: Colors.yellow),
            Container(color: Colors.blue),
          ],
        ),
      ),
    );

  }
}