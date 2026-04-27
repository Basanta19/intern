import 'package:flutter/material.dart';
// import 'package:flutter_application_1/anicontai.dart';
import 'package:flutter_application_1/richhhh.dart';
// import 'package:flutter_application_1/scroll_page.dart';
// import 'package:flutter_application_1/slide.dart';
// import 'package:flutter_application_1/blank.dart';
// import 'package:flutter_application_1/theme/dark_theme.dart';
// import 'package:flutter_application_1/theme/light_theme.dart';
// import 'package:flutter_application_1/blank.dart';
// import 'package:flutter_application_1/bar.dart';
// import 'package:flutter_application_1/drawing_page.dart';
// import 'package:flutter_application_1/rows_colms.dart';
// import 'package:flutter_application_1/scroll_page.dart';
// import 'package:flutter_application_1/pages/list_view.dart';
// import 'package:flutter_application_1/bottom_page.dart';
// import 'package:flutter_application_1/page.dart';
// // import 'package:flutter_application_1/homepage.dart';
// import 'package:flutter_application_1/gesture.dart';
// import 'package:flutter_application_1/expended.dart';
// import 'package:flutter_application_1/animation.dart';
// import 'package:flutter_application_1/slide.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: lightTheme,
      // darkTheme: darkTheme,
      themeMode: ThemeMode.dark,
      home: Richcont(),
    );
  }
}
