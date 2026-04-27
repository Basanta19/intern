import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/action.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class Slide extends StatefulWidget {
  const Slide({super.key});
  @override
  State<Slide> createState() => _SlideState();
}

class _SlideState extends State<Slide> {
  List<BasantAction> actions = [
    BasantAction(
      title: "Harish",
      subtitle: "How are you?",
      phoneColor: Colors.lightBlueAccent,
      leadingIcon: PhosphorIcons.person(),
    ),
    BasantAction(
      title: "Flutter",
      subtitle: "Slide Transition",
      phoneColor: Colors.lightBlueAccent,
      leadingIcon: PhosphorIcons.house(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Slide")),
        body: Center(
          child: ListView(
            children: [
              ...actions.map(
                (action) => ReusableSlidableTile(
                  action: action,
                  onDelete: () {
                    setState(() {
                      actions.remove(action);
                    });
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
