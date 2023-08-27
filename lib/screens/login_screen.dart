import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_basic/components/square_box.dart';
import 'package:flutter_basic/components/button_component.dart';
import 'package:flutter_basic/components/text_field_component.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 40),
                const Icon(
                  Icons.ac_unit,
                  size: 80,
                ),
                const SizedBox(height: 40),
                Text(
                  'A platform built for a new way of working',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 25),
                TextFieldComponent(
                  obsecure: false,
                  hintText: "Email",
                  controller: emailController,
                ),
                const SizedBox(height: 10),
                TextFieldComponent(
                  obsecure: true,
                  hintText: "Password",
                  controller: passwordController,
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.grey[600], fontSize: 11),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                GestureButtonComponent(
                  onTap: () {},
                  buttonText: "Sign In",
                ),
                const SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'OR',
                          style: TextStyle(color: Colors.grey[700], fontSize: 11),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SquareBox(child: SvgPicture.asset("assets/svg/google-48.svg", width: 30, height: 30,)),
                      SquareBox(child: SvgPicture.asset("assets/svg/github-48.svg", width: 30, height: 30,)),
                      SquareBox(child: SvgPicture.asset("assets/svg/facebook-48.svg", width: 30, height: 30,)),                
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account ? ",
                      style: TextStyle(color: Colors.grey[700], fontSize: 11),
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}