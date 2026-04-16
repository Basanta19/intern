import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/firstpage.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

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
              Navigator.of(
                context,
              ).pop(MaterialPageRoute(builder: (context) => const Firstpage()));
            },
            icon: Icon(Icons.arrow_back),
          ),
        ),
        body: Center(
          child: Text(
            'This is the second page',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
