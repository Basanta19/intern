import 'package:flutter/material.dart';

class Expendedview extends StatelessWidget {
  const Expendedview({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Row(
          children: [
            Expanded(flex: 3, child: Container(color: Colors.red)),
            Expanded(flex: 3, child: Container(color: Colors.green)),
            Expanded(flex: 3, child: Container(color: Colors.blue)),
            Expanded(flex: 3, child: Container(color: Colors.yellow)),
            Expanded(flex: 3, child: Container(color: Colors.purple)),
          ],
        ),
      ),
    );
  }
}
