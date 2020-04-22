import 'package:flutter/material.dart';
import 'package:loading/loading.dart';
import 'package:loading/indicator/ball_spin_fade_loader_indicator.dart';

class SplashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    new Future.delayed(const Duration(seconds: 3),
        () => Navigator.pushReplacementNamed(context, 'home'));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(),
          ListView(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(top: 360.0),
                alignment: Alignment.center,
                child: Text(
                  "Carregando...",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.black),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10.0),
                alignment: Alignment.center,
                child: Loading(
                  indicator: BallSpinFadeLoaderIndicator(),
                  size: 30.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
