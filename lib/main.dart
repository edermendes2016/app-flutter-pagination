import 'package:flutter/material.dart';
import 'package:pagination_app/page_indicator.dart';
import 'package:pagination_app/page_reveal.dart';
import 'package:pagination_app/pages.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Stack(
        children: [
          new PageReveal(
            revealPercent: 1.0,
            child: new Page(
              viewmodel: pages[2],
              percentVisible: 1.0,
            ),
          ),
          new PageIndicator(
            
          ),
        ],
      ),
    );
  }
}
