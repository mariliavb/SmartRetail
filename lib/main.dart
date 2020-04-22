import 'package:smart_retail/routes/router.dart';
import 'package:flutter/material.dart';

void main() {
  NavigationRouter.setupRouter();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Smart Retail',
        initialRoute: 'splash',
        onGenerateRoute: NavigationRouter.router.generator);
  }
}
