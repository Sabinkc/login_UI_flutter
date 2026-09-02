import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:developer' as logger;

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  TextEditingController emailController = TextEditingController(
    // text: "test@gmail.com",
  );
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              spacing: 30,
              mainAxisAlignment: .center,
              children: [
                Text(
                  "Login here",
                  style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                      fontWeight: .bold,
                      fontSize: 30,
                      color: Colors.deepOrangeAccent,
                    ),
                  ),
                ),
                Text(
                  "Welcome back you have \n been missed!",
                  textAlign: .center,
                  style: TextStyle(fontWeight: .bold, fontSize: 20),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.grey, fontWeight: .w500),
                    fillColor: Colors.deepOrange[50],
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.deepOrangeAccent,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.grey, fontWeight: .w500),
                    fillColor: Colors.deepOrange[50],
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.deepOrangeAccent,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Align(
                  alignment: .centerRight,
                  child: Text(
                    "Forgot your password?",
                    style: TextStyle(
                      color: Colors.deepOrangeAccent,
                      fontWeight: .w600,
                    ),
                  ),
                ),

                SizedBox(
                  height: 55,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrangeAccent,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      if (emailController.text.isEmpty ||
                          passwordController.text.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            behavior: SnackBarBehavior.floating,
                            backgroundColor: Colors.deepOrangeAccent,
                            duration: Duration(seconds: 1),
                            content: Text("Data must not be empty"),
                          ),
                        );
                      }
                    },
                    child: Text("SingIn", style: TextStyle(fontSize: 18)),
                  ),
                ),

                Text("Create new account", style: TextStyle(fontWeight: .w500)),
                SizedBox(height: 10),
                Text(
                  "Or continue with",
                  style: TextStyle(
                    color: Colors.deepOrangeAccent,
                    fontWeight: .w500,
                  ),
                ),
                Row(
                  mainAxisAlignment: .center,
                  spacing: 10,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10,
                      ),
                      child: FaIcon(FontAwesomeIcons.google),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10,
                      ),
                      child: FaIcon(FontAwesomeIcons.facebook),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10,
                      ),
                      child: FaIcon(FontAwesomeIcons.apple),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
