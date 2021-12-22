import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_catalog/screens/home_screen.dart';
import 'package:test_catalog/screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.white,
          primaryTextTheme: GoogleFonts.poppinsTextTheme(),
        ),
        title: 'Flutter Demo',
        routes: {
          "/": (context) => LoginScreen(),
          "/home": (context) => HomeScreen(),
        });
  }
}
