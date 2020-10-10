import 'package:flutter/material.dart';
import 'package:jerk_at_nite_client/shared/screen_dimensions.dart';

class HeroView extends StatelessWidget {
  final Widget genericWidget;
  final num height;

  final BoxDecoration boxDecoration;

  const HeroView({@required this.genericWidget, @required this.boxDecoration, @required this.height});

  @override
  Widget build(BuildContext context) {
    final screen = ScreenDimensions(context);
    return Stack(
      children: [
        Container(
          height: height,
          width: screen.screenWidth,
          decoration: boxDecoration,
        ),
        genericWidget,
      ],
    );
  }
}
