import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/src/widgets/implicit_animations.dart';
// ignore_for_file: prefer_const_constructors

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String name = "";
  bool isClicked = false;

  moveToHome(BuildContext context) async {
    setState(() {
      isClicked = true;
    });

    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, '/home');
    setState(() {
      isClicked = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              Image(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/loginscreen.png'),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Lets Login Account \n $name",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                          onChanged: (value) {
                            setState(() {
                              name = value;
                            });
                          },
                          decoration: InputDecoration(
                            labelText: "Email",
                            hintText: "Enter email here",
                            hintStyle: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 15.0,
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter email please";
                            }
                          }),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter password here",
                          labelText: "Password",
                          hintStyle: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Material(
                color: Colors.black,
                child: InkWell(
                  onTap: () async {
                    moveToHome(context);
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: isClicked ? 50 : 150,
                    height: 40,
                    alignment: Alignment.center,
                    color: Color.fromRGBO(108, 99, 255, 1),
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
