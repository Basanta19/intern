import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/firstpage.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class Blankpage extends StatelessWidget {
  const Blankpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow[200],
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.yellow,
          title: Text("Dashboard", style: TextStyle(fontSize: 30)),

          leading: IconButton(
            icon: Icon(PhosphorIcons.house()),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Firstpage()),
              );
            },
          ),
          actions: [
            IconButton(
              icon: Icon(PhosphorIcons.bell()),
              onPressed: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text('Notification Clicked')));
              },
            ),
          ],
        ),
        body: Container(
          color: Colors.yellow[200],
          child: Center(
            child: Row(
              children: [
                Text(
                  "This is a blank page",
                  style: TextStyle(fontSize: 30, color: Colors.purple),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
