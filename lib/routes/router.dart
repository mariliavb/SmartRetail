import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:smart_retail/pages/splash/splash.dart';
import 'package:smart_retail/pages/home/home.dart';

class NavigationRouter {
  static Router router = Router();
  static Handler _splashHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          SplashPage());

  static Handler _homeHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          HomePage());

  static void setupRouter() {
    router.define('splash',
        handler: _splashHandler, transitionType: TransitionType.fadeIn);

    router.define('home',
        handler: _homeHandler, transitionType: TransitionType.inFromLeft);
  }
}
