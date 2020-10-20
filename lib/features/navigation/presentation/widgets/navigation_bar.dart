import 'package:flutter/material.dart';
import 'package:jerk_at_nite_client/features/navigation/data/datasources/route_names.dart';

import 'nav_bar_item.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      child: Container(
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FlatButton(
              onPressed: () {},
              color: Colors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                "Find a Truck",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),

            // NavBarLogo(),
            NavBarItem('Menu', MenuRoute),
            NavBarItem('Catering', LocationsRoute),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.amberAccent,
              ),
            ),
            NavBarItem('Our Story', AboutRoute),
            NavBarItem('Careers', CareersRoute),

            FlatButton(
              onPressed: () {},
              color: Colors.red,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                "Order Now",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
