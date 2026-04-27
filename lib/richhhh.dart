import 'package:flutter/material.dart';

class Richcont extends StatelessWidget {
  const Richcont({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Rich text")),
        backgroundColor: Colors.blueGrey,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(height: 300, color: Colors.grey[300]),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 16),
                  children: [
                    TextSpan(
                      text: 'Flutter',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text:
                          ' is a programming language which is used to develop cross platform applicatio',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
