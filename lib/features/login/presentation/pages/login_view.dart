import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jerk_at_nite_client/features/login/presentation/widgets/login_form.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Container(
          padding: const EdgeInsets.all(200),
          child: LoginForm(),
        ),
      ],
    ));
  }
}
