import 'dart:async';


// import 'dart:js';
import 'package:flutter/material.dart';
import 'package:whosthatdude/pages/image_display.dart';

class NextScreen{

  void gotonextpage(BuildContext context){
    Timer(
        Duration(seconds: 2),
            () => Navigator.pushReplacementNamed(context, '/result'));
  }


}