import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/firstpage.dart';
import 'package:flutter_application_1/pages/secondpage.dart';

class DrawingPage extends StatelessWidget {
  const DrawingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Drawing Page'),
        backgroundColor: Colors.green,
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.pink[200],
          child: ListView(
            children: [
              Center(
                child: DrawerHeader(
                  child: Text('Drawer Header', style: TextStyle(fontSize: 30)),
                ),
              ),
              Builder(
                builder: (context) => ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home', style: TextStyle(fontSize: 20)),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Firstpage(),
                      ),
                    );
                  },
                ),
              ),
              Builder(
                builder: (context) => ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Profile', style: TextStyle(fontSize: 20)),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const SecondPage(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
