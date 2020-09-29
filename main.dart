import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Subway Arrival',
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //http://swopenapi.seoul.go.kr/api/subway/4f6b6b6c43746d7837335341495168/json/realtimeStationArrival/0/5/%EC%84%9C%EC%9A%B8
  static const String _urlPrefix = 'http://swopenapi.seoul.go.kr/api/subway/';
  static const String _userKey = '4f6b6b6c43746d7837335341495168';
  static const String _urlSuffix = '/json/realtimeStationArrival/0/5/';
  static const String _defaultStation = '강남';

  String _response = '';

  String _buildUrl(String station){
    StringBuffer sb = StringBuffer();
    sb.write(_urlPrefix);
    sb.write(_userKey );
    sb.write(_urlSuffix);
    sb.write(station);

    return sb.toString();
  }
  _httpGet(String url) async{
    var response = await http.get(_buildUrl(_defaultStation));
    String res = response.body;
    print('$res');
    setState(() {
      _response = res;
    });
  }
  @override
  void initState(){
    super.initState();
    _httpGet(_buildUrl(_defaultStation));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Subway Arrival'),
      ),
      body: Center(
        child: Text(_response),
      ),
    );
  }
}
