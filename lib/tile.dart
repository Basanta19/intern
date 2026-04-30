import 'package:flutter/material.dart';

class MyTile extends StatelessWidget {
  const MyTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.lightBlueAccent,
      child: Center(
        child: Text(
          'Tile',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
