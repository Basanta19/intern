import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyHours extends StatelessWidget {
  int hours;

  MyHours({super.key, required this.hours});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        hours.toString(),
        style: TextStyle(
          fontSize: 40,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
