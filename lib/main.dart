import 'package:flutter/material.dart';

import 'beam_clipper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: MyHomePage(),
    ));
  }
}

class MyHomePage extends StatelessWidget {
  final Image starsBackground = Image.asset(
    'assets/images/stars.jpg',
    fit: BoxFit.cover,
    height: double.infinity,
    width: double.infinity,
  );
  final Image ufo = Image.asset('assets/images/alien.png');

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: <Widget>[
        starsBackground,
        ClipPath(
          clipper: const BeamClipper(),
          child: Container(
            height: 1000,
            decoration: BoxDecoration(
              gradient: RadialGradient(
                radius: 1.5,
                colors: [
                  Colors.yellow,
                  Colors.transparent,
                ],
              ),
            ),
          ),
        ),
        ufo,
      ],
    );
  }
}