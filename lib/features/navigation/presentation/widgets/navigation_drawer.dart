import 'dart:html' as html;
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jerk_at_nite_client/features/navigation/presentation/widgets/navigation_drawer_header.dart';

class NavigationDrawer extends StatelessWidget {
  // _launchURL(String url) async {
  //   if (await canLaunch(url)) {
  //     await launch(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      child: ListView(
        children: [
          NavigationDrawerHeader(),
          ExpansionTile(
            trailing: Icon(
              Icons.arrow_drop_down,
              color: Colors.white,
            ),
            title: Text(
              "Shop",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w100),
            ),
            children: [
              ListTile(
                onTap: () {},
                title: Text(
                  "Haitian Castor Oil",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w100),
                ),
              ),
              Divider(
                height: 0.25,
                thickness: 0.25,
                color: Colors.white,
              ),
              ListTile(
                onTap: () {},
                title: Text(
                  "The Secret Collection",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w100),
                ),
              ),
              Divider(
                height: 0.25,
                thickness: 0.25,
                color: Colors.white,
              ),
            ],
          ),
          ListTile(
            title: Text("SecretsTV",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w100)),
            onTap: () {},
          ),
          ListTile(
            title: Text("Our Story",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w100)),
            onTap: () => {},
          ),
        ],
      ),
    );
  }
}
