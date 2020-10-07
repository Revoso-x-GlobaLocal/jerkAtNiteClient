import 'package:flutter/material.dart';
import 'package:jerk_at_nite_client/shared/screen_dimensions.dart';

class HeroView extends StatelessWidget {
  final Widget genericWidget;

  final BoxDecoration boxDecoration;

  const HeroView({this.genericWidget, this.boxDecoration});

  @override
  Widget build(BuildContext context) {
    final screen = ScreenDimensions(context);
    return Stack(
      children: [
        Container(
          height: screen.screenHeight * .4,
          width: screen.screenWidth,
          decoration: boxDecoration,
        ),
        genericWidget,
      ],
    );
  }
}
