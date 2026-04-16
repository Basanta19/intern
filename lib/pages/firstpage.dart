import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/secondpage.dart';

class Firstpage extends StatelessWidget {
  const Firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.tealAccent[200],
        appBar: AppBar(
          backgroundColor: Colors.tealAccent[400],
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop(
                MaterialPageRoute(builder: (context) => const SecondPage()),
              );
            },
            icon: Icon(Icons.arrow_back),
          ),
        ),
        body: Center(
          child: Text('This is the first page', style: TextStyle(fontSize: 30)),
        ),
      ),
    );
  }
}
