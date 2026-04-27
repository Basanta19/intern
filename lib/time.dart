import 'dart:async';

import 'package:flutter/material.dart';

class Timepage extends StatefulWidget {
  const Timepage({super.key});

  @override
  State<Timepage> createState() => _TimepageState();
}

class _TimepageState extends State<Timepage> {
  int timeleft = 5;

  void _startCountDown() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (timeleft > 0) {
        setState(() {
          timeleft--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("time page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              timeleft == 0 ? 'Done!' : timeleft.toString(),
              style: TextStyle(fontSize: 50),
            ),
            MaterialButton(
              onPressed: _startCountDown,
              color: Colors.blueAccent,
              textColor: Colors.white,
              child: Text("start", style: TextStyle(fontSize: 50)),
            ),
          ],
        ),
      ),
    );
  }
}
