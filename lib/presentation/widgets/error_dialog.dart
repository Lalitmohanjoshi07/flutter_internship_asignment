import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class ErrorDialog {
  static void show(BuildContext context, String msg) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          content: Text(msg),
        );
      },
    );
    Future.delayed(const Duration(seconds: 3), () {
      context.pop();
    });
  }
}
