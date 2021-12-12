import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ErrorDialog extends StatelessWidget {
  ErrorDialog(
      {required this.errorMesage,
      required this.errorTitle,
      this.killTheApp = false});

  final String errorMesage;
  final String errorTitle;
  final bool killTheApp;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 0.7),
      title: Text(
        errorTitle,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      content: Text(
        errorMesage.toString(),
        style: const TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        side: BorderSide(
          width: 1,
          style: BorderStyle.solid,
        ),
      ),
      actions: [
        Center(
          child: TextButton(
            onPressed: () {
              killTheApp ? SystemNavigator.pop() : Navigator.pop(context);
            },
            child: const Text(
              'OK',
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}