import 'package:cc_flutter_demo/01_navigator_demo/cc_navigator_next_page.dart';
import 'package:cc_flutter_demo/01_navigator_demo/cc_navigator_previous_page.dart';
import 'package:cc_flutter_demo/02_picker/cc_picker_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        '/first' : (BuildContext context) => CCNavigatorPreviousPage(),
        '/second' : (BuildContext context) => CCNavigatorNextPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("Navigator"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CCNavigatorPreviousPage()));
              }
            ),
            RaisedButton(
              child: Text("Picker"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CCPickerPage()));
              }
            ),
            
          ],
        ),
      ),
    );
  }
}
