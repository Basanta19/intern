import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class Boxy {
  final int x;
  final int y;
  int val;

  late Animation<double> animatedX;
  late Animation<double> animatedY;
  late Animation<int> animatedValue;
  late Animation<double> scale;

  Boxy(this.x, this.y, this.val) {
    resetAnimations();
  }

  void resetAnimations() {
    animatedX = AlwaysStoppedAnimation(x.toDouble());
    animatedY = AlwaysStoppedAnimation(y.toDouble());
    animatedValue = AlwaysStoppedAnimation(val);
    scale = AlwaysStoppedAnimation(1.0);
  }
}

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  double gridSize = 350;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[200],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[300],
        title: RichText(
          text: TextSpan(
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            children: [
              TextSpan(
                text: '2',
                style: TextStyle(color: Colors.black),
              ),
              TextSpan(
                text: '0',
                style: TextStyle(color: Colors.red[600]),
              ),
              TextSpan(
                text: '4',
                style: TextStyle(color: Colors.black),
              ),
              TextSpan(
                text: '8',
                style: TextStyle(color: Colors.red[600]),
              ),
            ],
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(PhosphorIcons.arrowLeft()),
        ),
      ),
      body: Center(
        child: Container(
          width: gridSize,
          height: gridSize,
          padding: EdgeInsets.all(4.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: Colors.brown,
          ),
        ),
      ),
    );
  }
}
