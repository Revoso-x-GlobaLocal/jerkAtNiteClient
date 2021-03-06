import 'package:flutter/material.dart';
import 'package:jerk_at_nite_client/features/navigation/presentation/widgets/hero_view.dart';
import 'package:jerk_at_nite_client/shared/screen_dimensions.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screen = ScreenDimensions(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          HeroView(
            height: screen.screenHeight * 0.4,
            boxDecoration: BoxDecoration(color: Colors.red[900]),
            genericWidget: Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  Text(
                    "Do Ya Body Rite",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 72,
                        fontWeight: FontWeight.w100),
                  ),
                  Text(
                    "Menu",
                    style: TextStyle(color: Colors.white, fontSize: 72),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 40),
          HeroView(
            height: screen.screenHeight * 0.1,
            boxDecoration: BoxDecoration(color: Colors.red),
            genericWidget: Container(
              child: Center(
                child: Text(
                  "Hungry Mon",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 56,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ),
          ),
          Container(
            height: screen.screenHeight * .5,
            width: screen.screenWidth * .5,
            child: GridView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              padding: EdgeInsets.all(50),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 4,
                mainAxisSpacing: screen.screenHeight * 0.005,
                crossAxisSpacing: screen.screenWidth * 0.005,
                crossAxisCount: 3,
              ),
              itemCount: 9,
              itemBuilder: (context, index) {
                return GridTile(
                    child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                  child: Center(
                    child: Text("Menu Item " + index.toString()),
                  ),
                ));
              },
            ),
          ),
          SizedBox(height: 20),
              HeroView(
            height: screen.screenHeight * 0.1,
            boxDecoration: BoxDecoration(color: Colors.red),
            genericWidget: Container(
              child: Center(
                child: Text(
                  "Likkle Tingz",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 56,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ),
          ),
      
          Container(
            height: screen.screenHeight * .5,
            width: screen.screenWidth * .5,
            child: GridView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              padding: EdgeInsets.all(50),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 4,
                mainAxisSpacing: screen.screenHeight * 0.005,
                crossAxisSpacing: screen.screenWidth * 0.005,
                crossAxisCount: 3,
              ),
              itemCount: 9,
              itemBuilder: (context, index) {
                return GridTile(
                    child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                  child: Center(
                    child: Text("Menu Item " + index.toString()),
                  ),
                ));
              },
            ),
          ),
          SizedBox(height: 20),
                HeroView(
            height: screen.screenHeight * 0.1,
            boxDecoration: BoxDecoration(color: Colors.red),
            genericWidget: Container(
              child: Center(
                child: Text(
                  "Desserts",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 56,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ),
          ),
          Container(
            height: screen.screenHeight * .5,
            width: screen.screenWidth * .5,
            child: GridView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              padding: EdgeInsets.all(50),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 4,
                mainAxisSpacing: screen.screenHeight * 0.005,
                crossAxisSpacing: screen.screenWidth * 0.005,
                crossAxisCount: 3,
              ),
              itemCount: 9,
              itemBuilder: (context, index) {
                return GridTile(
                    child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                  child: Center(
                    child: Text("Menu Item " + index.toString()),
                  ),
                ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
