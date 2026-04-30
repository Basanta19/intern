import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyMinute extends StatelessWidget {
  int min;

  MyMinute({super.key, required this.min});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        min < 10 ? '0$min' : min.toString(),
        style: TextStyle(
          fontSize: 40,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
