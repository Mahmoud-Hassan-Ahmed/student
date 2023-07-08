import 'package:flutter/material.dart';

abstract class AppUtils {
  static int indexNotificationsDialog = 1;
  static int indexLangDialog = 1;
  static void pushTo(BuildContext context, Widget destination) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => destination),
    );
  }

  static void pushToAnReplace(BuildContext context, Widget destination) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => destination),
      (route) => false,
    );
  }
}
