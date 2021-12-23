import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: prefer_const_constructors
// ignore: prefer_const_constructors
class Drawar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            alignment: Alignment.centerLeft,
            // ignore: prefer_const_constructors
            child: Image(
              image: AssetImage('assets/images/pp.png'),
              width: 90.0,
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
            alignment: Alignment.centerLeft,
            // ignore: prefer_const_constructors
            child: Text(
              "Sudeep Dahiya",
              // ignore: prefer_const_constructors
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Column(
              children: [
                ListTile(
                  textColor: Colors.white,
                  iconColor: Colors.white,
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                  onTap: () {
                    Navigator.pushNamed(context, '/home');
                  },
                ),
                ListTile(
                  textColor: Colors.white,
                  iconColor: Colors.white,
                  leading: Icon(Icons.person),
                  title: Text('Profile'),
                  onTap: () {
                    Navigator.pushNamed(context, '/profile');
                  },
                ),
                ListTile(
                  textColor: Colors.white,
                  iconColor: Colors.white,
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                  onTap: () {
                    Navigator.pushNamed(context, '/settings');
                  },
                ),
                ListTile(
                  textColor: Colors.white,
                  iconColor: Colors.white,
                  leading: Icon(Icons.exit_to_app),
                  title: Text('Logout'),
                  onTap: () {
                    Navigator.pushNamed(context, '/login');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
