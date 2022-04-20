import 'package:flutter/material.dart';
import 'package:projet1/pages/food/article.dart';
import 'package:projet1/pages/food/starFoot.dart';
import 'package:projet1/pages/home/index.dart';

//import 'package:get/get.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
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
      home: StarFoot(),
    );
  }
}
