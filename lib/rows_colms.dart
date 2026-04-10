import 'package:flutter/material.dart';

class RowColms extends StatelessWidget {
  const RowColms({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ContainerColumns(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Flutter is awesome"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContainerColumns extends StatelessWidget {
  const ContainerColumns({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red, width: 5),
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(20),
          child: Text("hello world", textAlign: TextAlign.right),
        ),
        Container(
          height: 100,
          width: 100,
          alignment: Alignment.bottomRight,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.green, width: 5),
            borderRadius: BorderRadius.circular(10),
          ),

          child: Text(
            'good morning',
            style: TextStyle(
              fontSize: 20,
              color: Colors.purple,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: 100,
          width: 100,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue, width: 5),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            "I'm ready",
            style: TextStyle(
              fontSize: 20,
              color: Colors.purple,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
