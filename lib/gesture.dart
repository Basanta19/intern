import 'package:flutter/material.dart';

class GestureApp extends StatefulWidget {
  const GestureApp({super.key});

  @override
  GestureAppState createState() => GestureAppState();
}

class GestureAppState extends State<GestureApp> {
  int numberOfTimesTapped = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark(),
      home: Scaffold(
        body: Center(
          child: GestureDetector(
            onTap: () {
              setState(() {
                numberOfTimesTapped++;
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Tapped $numberOfTimesTapped times',
                  style: TextStyle(fontSize: 40),
                ),
                // Padding(
                //   padding: const EdgeInsets.all(10.0),
                //   child: GestureDetector(
                //     onTap: () {
                //       setState(() {
                //         numberOfTimesTapped++;
                //       });
                //     },
                //     child: Container(
                //       padding: EdgeInsets.all(15.0),
                //       color: Colors.green,
                //       child: Text('tap here', style: TextStyle(fontSize: 40)),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
