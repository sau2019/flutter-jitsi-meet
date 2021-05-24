import 'dart:async';
import 'package:flutter/material.dart';
import 'package:live_class/screens/homescreen/homescreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => HomeScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 2 - 100,
          ),
          Center(
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 100,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      20,
                    ),
                  ),
                  color: Colors.white,
                ),
                height: 150,
                width: 150,
                child: Image.asset(
                  'assets/logo/logo.png',
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              'Fly Learn',
              style: TextStyle(
                color: Color(0xff0077ba),
                fontSize: 18.0,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          SizedBox(
            height: 220,
          ),
          Text('Developed by: Mindstein Software')
        ],
      ),
    );
  }
}
