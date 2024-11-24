import 'package:flutter/material.dart';
import 'package:graduation/screens/edit.dart';
import 'package:graduation/screens/help.dart';
import 'package:graduation/screens/history_details.dart';
import 'package:graduation/screens/homeuser_page.dart';
import 'package:graduation/screens/logout.dart';


import 'package:graduation/screens/profile_details.dart';
import 'package:graduation/screens/setting.dart';

import 'package:graduation/screens/splash_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: SplashScreen(),
      home: HomeUserPage(),//SplashScreen(),

      debugShowCheckedModeBanner: false,

      routes: {
        'history_details': (context) => HistoryPage(),
        'profiledetails': (context) => ProfileDetails(),
        'edit': (context) => EditPage(),
        'logout': (context) => LogoutScreen(),
        'help': (context) => HelpPage(),
        'Settings': (context) => Setting(),
      },
    );
  }
}
