import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jerk_at_nite_client/features/login/presentation/widgets/login_form.dart';
import 'package:jerk_at_nite_client/shared/screen_dimensions.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    num screenHeight = ScreenDimensions(context).screenHeight;
    num screenWidth = ScreenDimensions(context).screenWidth;
    return Scaffold(
        body: ListView(
      children: [
        Container(
          padding: EdgeInsets.all(screenWidth * 0.25),
          child: LoginForm(),
        ),
      ],
    ));
  }
}
