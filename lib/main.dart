import 'package:ept/page/article.dart';
import 'package:ept/page/home.dart';
import 'package:ept/page/index.dart';
import 'package:flutter/material.dart';
//import 'package:ept/page/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const mainFoodPage(),
      home: index(),
    );
  }
}
