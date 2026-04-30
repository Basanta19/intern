import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AmPm extends StatelessWidget {
  final bool isitAm;

  const AmPm({super.key, required this.isitAm});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          isitAm == true ? 'am' : 'pm',
          style: TextStyle(
            fontSize: 40,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
