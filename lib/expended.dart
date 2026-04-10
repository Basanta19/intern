import 'package:flutter/material.dart';

class Expendedview extends StatelessWidget {
  const Expendedview({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(height: 100, width: 100, color: Colors.red),
            Expanded(child: Container(height: 100, color: Colors.green)),
            Container(height: 100, width: 100, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
