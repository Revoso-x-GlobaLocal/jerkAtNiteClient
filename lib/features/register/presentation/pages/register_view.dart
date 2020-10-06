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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(),
                IconButton(
                    icon: Icon(
                      Icons.highlight_remove_outlined,
                      color: Colors.green[900],
                      size: 36,
                    ),
                    onPressed: () {})
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.25),
              child: ListView(
                children: [
                  SizedBox(height: screenHeight * .1),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Create An Account.",
                      style: TextStyle(
                          color: Colors.green[900],
                          fontSize: 48,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already a member?",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w100,
                            fontSize: 18),
                      ),
                      FlatButton(
                          onPressed: () {},
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                                color: Colors.green[900],
                                fontWeight: FontWeight.w600,
                                fontSize: 18),
                          ))
                    ],
                  ),
                  SizedBox(height: screenHeight * .075),
                  Container(
                    // padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.15),
                    child: RegisterForm(),
                  ),
                  Container(
                    height: screenHeight * 0.055,
                    width: screenWidth * 0.025,
                    padding: EdgeInsets.symmetric(horizontal: screenWidth * .1),
                    child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            side:
                                BorderSide(color: Colors.green[900], width: 2)),
                        color: Colors.transparent,
                        disabledColor: Colors.white10,
                        onPressed: () {},
                        child: Text(
                          "Create Account",
                          style: TextStyle(
                              color: Colors.green[900],
                              fontWeight: FontWeight.w900),
                        )),
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
