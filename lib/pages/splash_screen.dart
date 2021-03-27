import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
AnimationController _controller;
Animation<double> _animation;

@override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(seconds: 3),);
    _controller.repeat();
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: RotationTransition(
              turns: _animation,
              child: Image(
                width: 80,
                height: 80,
                image: AssetImage('assets/images/splash.png'),
              ),
        ),
      ),
    );
  }
}
