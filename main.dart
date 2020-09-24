import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sliver App Bar',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: SliverPage(),
    );
  }
}
class SliverPage extends StatefulWidget {
  @override
  _SliverPageState createState() => _SliverPageState();
}

class _SliverPageState extends State<SliverPage> {
  final _items = List.generate(50, (i) => ListTile(title: Text('No.$i')));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,//스크롤 축소 시 상단 AppBar 고정
            expandedHeight: 180,//header의 최대 높이
            flexibleSpace: FlexibleSpaceBar(  // 늘어나는 영역의 UI
              title: Text(
                'Sliver AppBar'),
              background: Image.asset(
                'assets/test_image_2.jpg',
                fit:BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(_items),
          ),
        ],
      ),
    );
  }
}
