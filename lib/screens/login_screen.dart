import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/src/widgets/implicit_animations.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String name = "";
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
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
                  ),
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

          InkWell(
            onTap: () async {
              setState(() {
                isClicked = true;
              });

              await Future.delayed(Duration(seconds: 1));
              Navigator.pushNamed(context, '/home');
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
          )

          // Padding(
          //   padding: const EdgeInsets.all(20.0),
          //   child: SizedBox(
          //     height: 50,
          //     width: double.infinity,
          //     child: ElevatedButton(
          //         style: TextButton.styleFrom(
          //           elevation: 10.00,
          //           backgroundColor: Color.fromRGBO(108, 99, 255, 1),
          //           shape: RoundedRectangleBorder(
          //               borderRadius: BorderRadius.circular(10)),
          //         ),
          //         onPressed: () {
          //           Navigator.pushNamed(context, '/home');
          //         },
          //         child: Text(
          //           "Login",
          //           style: TextStyle(fontSize: 20.00),
          //         )),
          //   ),
          // )
        ],
      ),
    );
  }
}
