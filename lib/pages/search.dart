import 'package:flutter/material.dart';

class UserSearch extends StatefulWidget {
  const UserSearch({super.key, required this.onSwitchTapped});
  final VoidCallback onSwitchTapped;

  @override
  UserSearchState createState() => UserSearchState();
}

class UserSearchState extends State<UserSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Search Page', style: TextStyle(fontSize: 50)),
            GestureDetector(
              onTap: widget.onSwitchTapped,
              child: Container(
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 2, color: Colors.black),
                ),
                child: Text('Switch Page', style: TextStyle(fontSize: 20)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
