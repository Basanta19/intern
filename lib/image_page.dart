import 'package:flutter/material.dart';

void main() {
  runApp(const ImageApp());
}

class ImageApp extends StatelessWidget {
  const ImageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ClipRRect(
            child: Container(
              height: 300,
              width: 300,
              color: Colors.purple,
              child: Image.asset('lib/images/pic.jpg', fit: BoxFit.fill),
            ),
          ),
        ),
      ),
    );
  }
}
