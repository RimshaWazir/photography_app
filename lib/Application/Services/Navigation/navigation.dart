import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Navigate {
  Navigate._();

  static push(BuildContext context, Widget child) {
    Navigator.push(
        context, PageTransition(type: PageTransitionType.fade, child: child));
  }

  static pushReplacement(BuildContext context, Widget child) {
    Navigator.pushReplacement(context,
        PageTransition(type: PageTransitionType.topToBottom, child: child));
  }

  static pushAndRemoveUntil(BuildContext context, Widget child) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => child),
      (route) => false,
    );
  }

  static pop(BuildContext context) {
    Navigator.pop(context);
  }
}
