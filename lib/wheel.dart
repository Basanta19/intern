import 'package:flutter/material.dart';
import 'package:flutter_application_1/apm.dart';
import 'package:flutter_application_1/hours.dart';
import 'package:flutter_application_1/minutes.dart';
import 'package:flutter_application_1/slidepage.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class WheelPage extends StatefulWidget {
  const WheelPage({super.key});

  @override
  State<WheelPage> createState() => _WheelPageState();
}

class _WheelPageState extends State<WheelPage> {
  //  STEP 1: Create 3 controllers
  late FixedExtentScrollController _hourController;
  late FixedExtentScrollController _minuteController;
  late FixedExtentScrollController _ampmController;

  // STEP 2: Store selected values
  int selectedHour = 0;
  int selectedMinute = 0;
  bool isAm = true;

  @override
  void initState() {
    super.initState();

    //  STEP 3: Initialize controllers
    _hourController = FixedExtentScrollController();
    _minuteController = FixedExtentScrollController();
    _ampmController = FixedExtentScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
        title: Text(
          'Wheel Clock',
          style: TextStyle(color: Colors.pink, fontSize: 50),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (context) => const Slidepage()));
          },
          icon: Icon(PhosphorIcons.arrowLeft()),
        ),
      ),

      body: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // HOURS
              SizedBox(
                width: 70,
                child: ListWheelScrollView.useDelegate(
                  controller: _hourController,
                  itemExtent: 50,
                  perspective: 0.005,
                  diameterRatio: 1.5,
                  physics: FixedExtentScrollPhysics(),

                  //  STEP 4: Detect selected hour
                  onSelectedItemChanged: (index) {
                    selectedHour = index;
                  },

                  childDelegate: ListWheelChildBuilderDelegate(
                    childCount: 12,
                    builder: (context, index) {
                      return MyHours(hours: index);
                    },
                  ),
                ),
              ),

              SizedBox(width: 10),

              // MINUTES
              SizedBox(
                width: 70,
                child: ListWheelScrollView.useDelegate(
                  controller: _minuteController,
                  itemExtent: 50,
                  perspective: 0.005,
                  diameterRatio: 1.5,
                  physics: FixedExtentScrollPhysics(),

                  //  STEP 5: Detect selected minute
                  onSelectedItemChanged: (index) {
                    selectedMinute = index;
                  },

                  childDelegate: ListWheelChildBuilderDelegate(
                    childCount: 60,
                    builder: (context, index) {
                      return MyMinute(min: index);
                    },
                  ),
                ),
              ),

              SizedBox(width: 10),

              // AM / PM
              SizedBox(
                width: 70,
                child: ListWheelScrollView.useDelegate(
                  controller: _ampmController,
                  itemExtent: 50,
                  perspective: 0.005,
                  diameterRatio: 1.5,
                  physics: FixedExtentScrollPhysics(),

                  // STEP 6: Detect AM/PM
                  onSelectedItemChanged: (index) {
                    isAm = index == 0;
                  },

                  childDelegate: ListWheelChildBuilderDelegate(
                    childCount: 2,
                    builder: (context, index) {
                      return AmPm(isitAm: index == 0);
                    },
                  ),
                ),
              ),
            ],
          ),

          // CENTER HIGHLIGHT
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 50,
              color: Colors.red.withValues(alpha: 0.2),
            ),
          ),

          // SAVE BUTTON
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: ElevatedButton.icon(
                onPressed: () {
                  //  STEP 7: Format time
                  String period = isAm ? "AM" : "PM";
                  String minute = selectedMinute.toString().padLeft(2, '0');

                  String hour = (selectedHour == 0 ? 12 : selectedHour)
                      .toString();

                  String time = "$hour:$minute $period";

                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text("Saved Time: $time")));
                },
                icon: Icon(PhosphorIcons.check()),
                label: Text('Save'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
