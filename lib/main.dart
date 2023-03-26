import 'package:flutter/material.dart';
import 'package:project/pages/home_page.dart';
import 'package:project/pages/login_page.dart';
import 'package:project/pages/register_page.dart';
import 'package:project/pages/search_page.dart';
import 'package:project/pages/spash_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: SpashScreen(),
    );
  }
}
