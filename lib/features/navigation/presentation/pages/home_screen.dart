import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:jerk_at_nite_client/features/navigation/presentation/widgets/hero_view.dart';
import 'package:jerk_at_nite_client/shared/screen_dimensions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screen = ScreenDimensions(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          CarouselSlider(
            options: CarouselOptions(height: 600.0, viewportFraction: 1),
            items: [1, 2, 3, 4, 5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(color: Colors.amber),
                      child: Text(
                        'text $i',
                        style: TextStyle(fontSize: 16.0),
                      ));
                },
              );
            }).toList(),
          ),
          SizedBox(height: 20),
          Container(
            height: 400,
            width: screen.screenWidth,
            child: Row(
              children: [
                Container(
                  height: 400,
                  width: screen.screenWidth / 2,
                  color: Colors.white10,
                ),
                Container(
                  height: 400,
                  width: screen.screenWidth / 2,
                  color: Colors.cyan[700],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 300,
            width: screen.screenWidth,
            child: Row(
              children: [
                Container(
                  height: 300,
                  width: screen.screenWidth / 3,
                  color: Colors.green[700],
                ),
                Container(
                  height: 300,
                  width: screen.screenWidth / 3,
                  color: Colors.deepOrange[300],
                ),
                Container(
                  height: 300,
                  width: screen.screenWidth / 3,
                  color: Colors.deepPurpleAccent[700],
                ),
              ],
            ),
          ),
          GridView.builder(
              itemCount: 8,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 5, crossAxisSpacing: 5),
              itemBuilder: (ctx, i) {
                return Container(
                  color: Colors.red,
                  height: screen.screenHeight / 20,
                  width: screen.screenWidth / 20,
                );
              }),
        ],
      ),
    );
  }
}
