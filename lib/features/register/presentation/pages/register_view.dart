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
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Text(
            "Create a Jerk at Nite Profile.",
          ),
          Text(
            "All fields with an * are required",
          ),
          SizedBox(height: screenHeight * 0.1),
          Container(
            height: screenHeight * 0.5,
            child: RegisterForm(),
          ),
        ],
      ),
    );
  }
}
