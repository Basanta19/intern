import 'package:flutter/material.dart';
import 'package:flutter_application_1/scroll_page.dart';
// import 'package:flutter_application_1/pages/list_view.dart';
// import 'package:flutter_application_1/bottom_page.dart';
// import 'package:flutter_application_1/page.dart';
// // import 'package:flutter_application_1/homepage.dart';
// import 'package:flutter_application_1/gesture.dart';
// import 'package:flutter_application_1/expended.dart';

void main() {
  runApp(const ScrolllPage());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(height: 200, width: 200, color: Colors.red),
          ),
        ),
      ),
    );
  }
}
