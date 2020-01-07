import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:untitled/nueva_pagina.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Damion',
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: widget(
        child: Column(children: <Widget>[
          Container(
            child: Text('Cinco cosas que agradeceras ahora'),
            padding: EdgeInsets.all(20.0),
          ),
          Container(
            child: Text('Elemento 1'),
            padding: EdgeInsets.all(20.0),
          ),
          Container(
            child: Text(
              'Elemento 2',
              style: TextStyle(fontFamily: 'Damion'),
            ),
            padding: EdgeInsets.all(20.0),
          ),
          Container(
            child: Text('Elemento 3'),
            padding: EdgeInsets.all(20.0),
          ),
          Container(
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Elemento 1',
              ),
            ),
            padding: EdgeInsets.all(20.0),
          ),
          Container(
            child: Text('Elemento 5'),
            padding: EdgeInsets.all(20.0),
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                DatePickerTimeline(
                  DateTime.now(),
                  onDateChange: (date) {
                    // New date selected
                    print(date.day.toString());
                  },
                ),
              ]),
          MaterialButton(
              color: Colors.lightGreen,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PaginaInicio()),
                );
              })
        ]),
      )),
    );
  }
}
