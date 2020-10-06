import 'dart:html';

import 'package:flutter/material.dart';
import 'package:jerk_at_nite_client/features/register/presentation/widgets/register_form.dart';
import 'package:jerk_at_nite_client/shared/screen_dimensions.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    num screenHeight = ScreenDimensions(context).screenHeight;
    num screenWidth = ScreenDimensions(context).screenWidth;
    return Scaffold(
      backgroundColor: Color(0xFFf9f9f9),
      body: Column(
        children: [
          Material(
            elevation: 1.5,
            child: Container(
              height: screenWidth * 0.035,
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(boxShadow: <BoxShadow>[]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Jerk at Nite",
                    style: TextStyle(
                        color: Colors.red[900],
                        fontSize: 24,
                        fontWeight: FontWeight.w300),
                  ),
                  Text(
                    "Login/Register",
                    style: TextStyle(
                        color: Colors.red[900],
                        fontSize: 16,
                        fontWeight: FontWeight.w100),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.25),
              child: ListView(
                children: [
                  SizedBox(height: screenHeight * .1),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Do Ya Body Right!",
                      style: TextStyle(
                          color: Color(0xFF2A4D14),
                          fontSize: 48,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Create a Jerk at Nite \nCustomer Account.",
                      style: TextStyle(
                          color: Color(0xFF317B22),
                          fontSize: 48,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "All fields with an * are required",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.w100),
                    ),
                  ),
                  SizedBox(height: screenHeight * .1),
                  Container(
                    // padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.15),
                    child: RegisterForm(),
                  ),
                  Container(
                    height: screenHeight * 0.025,
                    width: screenWidth * 0.025,
                    padding: EdgeInsets.symmetric(horizontal: screenWidth * .1),
                    child: FlatButton(
                      color: Color(0xFF2A4D14),
                      disabledColor: Colors.white10,
                        onPressed: () {}, child: Text("Create Account", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w100),)),
                  ),
                  Container(
                    height: screenHeight * 0.1,
                    child: Column(
                      children: [],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
