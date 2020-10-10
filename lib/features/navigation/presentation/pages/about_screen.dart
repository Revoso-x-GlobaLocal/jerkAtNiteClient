//Views (with no interaction) are children of Screens (the root view)
//Views are comprised of widgets
import 'package:flutter/material.dart';
import 'package:jerk_at_nite_client/shared/screen_dimensions.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    num screenHeight = ScreenDimensions(context).screenHeight;
    num screenWidth = ScreenDimensions(context).screenWidth;
    // scaffold is FULL SCREEN
    return Scaffold(
      backgroundColor: Color(0xFFf9f9f9), // body returns a column
      body: Column(
          // inside the column there will be children
          children: [
            // first child will be nav bar
            Expanded(
                child: ListView(children: [
              Row(), // Two small containers for "who we are and what we do" For the Nav bar
              SizedBox(height: screenHeight * .1), //add height for spacing
              Text("WHAT WE'RE ABOUT"), // Title
              SizedBox(height: screenHeight * .1),
              Row(children: [
                // Containers with photos (will need two columns/stacks)
                Stack(children: <Widget>[
                  Container(
                    width: 100,
                    height: 50,
                    color: Colors.green,
                  ),
                  Container(
                    width: 75,
                    height: 75,
                    color: Colors.blue,
                  ),
                ]),
                Stack(children: <Widget>[
                  Container(
                    width: 100,
                    height: 50,
                    color: Colors.blue,
                  ),
                  Container(
                    width: 75,
                    height: 75,
                    color: Colors.green,
                  ),
                ]),
              ]),
              SizedBox(height: screenHeight * .1), // add height for spacing
              Container(),
              SizedBox(height: screenHeight * .1), //add height for spacing
              Text(
                  ' This will be a paragraph section to describe about the company'), // Paragraph
              SizedBox(height: screenHeight * .1),
            ])),
          ]), // end column
    );
  }
}
