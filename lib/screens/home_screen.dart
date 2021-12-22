import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
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
