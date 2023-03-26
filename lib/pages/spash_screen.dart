import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project/pages/register_page.dart';

import 'home_page.dart';
import 'login_page.dart';

class SpashScreen extends StatefulWidget {
  const SpashScreen({super.key});

  @override
  State<SpashScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SpashScreen> {
  bool _isVisible = true;
  _MyHomePageState() {
    new Timer(const Duration(milliseconds: 2200), () {
      setState(() {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => LoginPage()),
            (route) => false);
      });
    });
    new Timer(Duration(milliseconds: 1000), () {
      setState(() {
        _isVisible = false;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: AnimatedOpacity(
          opacity: _isVisible ? 1.0 : 0,
          duration: Duration(milliseconds: 1200),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 120),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                //   mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    child: ClipOval(
                      child: Image.asset("assets/images/logo.png"),
                    ),
               
                  ),
                  Text(
                    "Doctor Hunt",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
