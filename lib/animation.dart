import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimationPage extends StatefulWidget {
  const AnimationPage({super.key});

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage>
    with SingleTickerProviderStateMixin {
  //controller
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  bool delivered = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Animation")),
        body: Center(
          child: GestureDetector(
            onTap: () {
              if (delivered == false) {
                delivered = true;
                _controller.forward();
              } else {
                delivered = false;
                _controller.reverse();
              }
              // delivered = !delivered;
            },

            child: Lottie.network(
              "https://lottie.host/2f624424-5aa9-4765-8283-641df6296d54/2dbIqOuX8E.json",
              controller: _controller,
            ),
          ),
        ),
      ),
    );
  }
}
