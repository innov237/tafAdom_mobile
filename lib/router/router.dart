import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageRouter {
  static pushPage(page, context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }

  static pushReplacementPage(page, context) {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => page));
  }
}
