import 'package:flutter/material.dart';

class Userhome extends StatefulWidget {
  const Userhome({super.key, required this.onSwitchTapped});
  final VoidCallback onSwitchTapped;
  @override
  UserhomeState createState() => UserhomeState();
}

class UserhomeState extends State<Userhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Home Page', style: TextStyle(fontSize: 50)),
            GestureDetector(
              onTap: widget.onSwitchTapped,
              child: Container(
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 2, color: Colors.black),
                ),
                child: Text('Switch Button', style: TextStyle(fontSize: 20)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
