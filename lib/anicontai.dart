import 'package:flutter/material.dart';

class Animecont extends StatefulWidget {
  const Animecont({super.key});

  @override
  State<Animecont> createState() => _AnimecontState();
}

class _AnimecontState extends State<Animecont> {
  double boxHeight = 100;
  double boxWidth = 100;
  var primeryColor = Colors.black;
  var boxColor = Colors.blueAccent;
  double boxX = 0;
  double boxY = 0;

  void _expandBox() {
    setState(() {
      boxHeight = 200;
      boxWidth = 200;
    });
  }

  void _nonexpandBox() {
    setState(() {
      boxHeight = 100;
      boxWidth = 100;
    });
  }

  void _switchColor() {
    setState(() {
      boxColor = Colors.redAccent;
    });
  }

  void _nonswitchColor() {
    setState(() {
      boxColor = Colors.blueAccent;
    });
  }

  void _moveBox() {
    setState(() {
      boxX = 1;
      boxY = 1;
    });
  }

  void _nonmoveBox() {
    setState(() {
      boxX = 0;
      boxY = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Animated Container")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                duration: Duration(seconds: 1),
                alignment: Alignment(boxX, boxY),
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  height: boxHeight,
                  width: boxWidth,
                  color: boxColor,
                ),
              ),

              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        if (boxColor == Colors.blueAccent) {
                          _switchColor();
                        } else {
                          _nonswitchColor();
                        }
                      },
                      child: Container(
                        color: primeryColor,
                        height: 50,
                        width: 50,
                        child: Text(
                          "switch color",
                          style: TextStyle(color: Colors.white),
                          textAlign: (TextAlign.center),
                        ),
                      ),
                    ),
                  ),

                  Center(
                    child: GestureDetector(
                      onTap: () {
                        if (boxHeight == 100) {
                          _expandBox();
                        } else {
                          _nonexpandBox();
                        }
                      },
                      child: Container(
                        color: primeryColor,
                        height: 50,
                        width: 50,
                        child: Text(
                          "expand box",
                          style: TextStyle(color: Colors.white),
                          textAlign: (TextAlign.center),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        if (boxX == 0) {
                          _moveBox();
                        } else {
                          _nonmoveBox();
                        }
                      },
                      child: Container(
                        color: primeryColor,
                        height: 50,
                        width: 50,
                        child: Text(
                          "move box",
                          style: TextStyle(color: Colors.white),
                          textAlign: (TextAlign.center),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
