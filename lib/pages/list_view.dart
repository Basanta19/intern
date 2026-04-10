import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.purple,
                height: 200,
                width: 200,
                child: const Text(
                  "Red",
                  style: TextStyle(color: Colors.white, fontSize: 40),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.red,
                height: 200,
                width: 200,
                child: const Text(
                  "Blue",
                  style: TextStyle(color: Colors.white, fontSize: 40),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.brown,
                height: 200,
                width: 200,
                child: const Text(
                  "white",
                  style: TextStyle(color: Colors.white, fontSize: 40),
                  textAlign: TextAlign.end,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.blue,
                height: 200,
                width: 200,
                child: const Text(
                  "Green",
                  style: TextStyle(color: Colors.white, fontSize: 40),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.green,
                height: 200,
                width: 200,
                child: const Text(
                  "Yellow",
                  style: TextStyle(color: Colors.white, fontSize: 40),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.yellow,
                height: 200,
                width: 200,
                child: const Text(
                  "Orange",
                  style: TextStyle(color: Colors.white, fontSize: 40),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.deepOrange,
                height: 200,
                width: 200,
                child: const Text(
                  "Purple",
                  style: TextStyle(color: Colors.white, fontSize: 40),
                  textAlign: TextAlign.end,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
