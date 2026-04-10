import 'package:flutter/material.dart';
import 'package:flutter_application_1/posts/post1.dart';
import 'package:flutter_application_1/posts/post2.dart';
import 'package:flutter_application_1/posts/post3.dart';

class PageViewExample extends StatelessWidget {
  const PageViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: PageView(
          scrollDirection: Axis.vertical,
          children: [Mypost1(), Mypost2(), Mypost3()],
        ),
      ),
    );
  }
}
