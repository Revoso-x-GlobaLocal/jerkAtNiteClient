import 'package:flutter/material.dart';

class LogoView extends StatelessWidget {
  const LogoView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.amberAccent,
      ),
    );
  }
}
