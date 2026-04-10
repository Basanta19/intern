import 'package:flutter/material.dart';

class Bar extends StatelessWidget {
  const Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.teal,
          elevation: 0,
          title: Text(
            'F L U T T E R   A P P',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.person))],
        ),
      ),
    );
  }
}
