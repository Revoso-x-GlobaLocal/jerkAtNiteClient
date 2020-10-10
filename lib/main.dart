import 'package:flutter/material.dart';
import 'package:jerk_at_nite_client/features/login/presentation/pages/login_view.dart';
import 'package:jerk_at_nite_client/features/navigation/presentation/pages/home_screen.dart';
import 'package:jerk_at_nite_client/features/register/presentation/pages/register_view.dart';

import 'features/navigation/presentation/pages/about_screen.dart';

void main() {
  runApp(JerkAtNiteClient());
}

class JerkAtNiteClient extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: RegisterScreen(),
      home: HomeScreen(),
    );
  }
}
