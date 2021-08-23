import 'package:ajheryuk/screens/bottom_screens/main_screen.dart';
import 'package:ajheryuk/screens/course_detail.dart';
import 'package:ajheryuk/screens/log_in.dart';
import 'package:ajheryuk/screens/sign_up.dart';
import 'package:ajheryuk/screens/start_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent));
  runApp(AjheryukApp());
}

class AjheryukApp extends StatelessWidget {
  const AjheryukApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartScreen(),
      routes: {
        LogInScreen.routName: (ctx) => LogInScreen(),
        SignUpScreen.routName: (ctx) => SignUpScreen(),
        MainScreens.routName: (ctx) => MainScreens(),
        CourseDetailScreen.routName: (ctx) => CourseDetailScreen(),
      },
    );
  }
}
