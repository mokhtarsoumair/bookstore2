import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'auth.dart';
import 'chat.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  bool _animate = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((_) {
      setState(() {
        _animate = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: Duration(seconds: 3),
            top: _animate ? 0 : -30,
            left: _animate ? 0 : -30,
            child: Image.asset('assets/images/splash.png'),
          ),
          AnimatedPositioned(
            top: 250,
            left: _animate ? 0 : -50,
            duration: Duration(seconds: 3),
            child: AnimatedOpacity(
              duration: Duration(seconds: 3),
              opacity: _animate ? 1 : 0,
              child: Text(
                'BookStore',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
