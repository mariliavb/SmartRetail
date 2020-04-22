import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Dialog(
      elevation: 0.0,
      backgroundColor: Colors.white,
      child: SingleChildScrollView(
        child: Stack(
          children: <Widget>[

          ],
        ),
      ),
    );
  }
}
