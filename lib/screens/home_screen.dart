import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_catalog/widgets/drawr.dart';
// ignore_for_file: prefer_const_constructors

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(
        width: 220.0,
        child: Drawer(
          child: SafeArea(
            child: Drawar(),
          ),
          backgroundColor: Color.fromRGBO(108, 99, 255, 1),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(108, 99, 255, 1),
        title: Text('Flutter Catalog'),
      ),
      body: SafeArea(
        child: Center(
          child: Text("Homescreen"),
        ),
      ),
    );
  }
}
