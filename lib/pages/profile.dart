import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key, required this.onSwitchTapped});
  final VoidCallback onSwitchTapped;

  @override
  UserProfileState createState() => UserProfileState();
}

class UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Profile Page', style: TextStyle(fontSize: 50)),
            GestureDetector(
              onTap: widget.onSwitchTapped,
              child: Container(
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 2, color: Colors.black),
                ),
                child: Text('Profile switch', style: TextStyle(fontSize: 20)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
