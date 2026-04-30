import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:slide_to_act/slide_to_act.dart';

class Slidepage extends StatefulWidget {
  const Slidepage({super.key});

  @override
  State<Slidepage> createState() => _SlidepageState();
}

class _SlidepageState extends State<Slidepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SlideAction(
            borderRadius: 20,
            elevation: 0,
            innerColor: Colors.amberAccent,
            outerColor: Colors.pink[400],
            sliderButtonIcon: Icon(PhosphorIcons.lockKeyOpen()),
            sliderRotate: false,
            text: 'Slide to Open',
            textStyle: TextStyle(color: Colors.black, fontSize: 30),
            onSubmit: () async {
              await Future.delayed(Duration(seconds: 2));

              //do something
            },
          ),
        ),
      ),
    );
  }
}
