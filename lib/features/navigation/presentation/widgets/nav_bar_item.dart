import 'package:flutter/material.dart';
import 'package:jerk_at_nite_client/features/navigation/data/models/navbar_item_model.dart';
import 'package:jerk_at_nite_client/shared/locator.dart';
import 'package:jerk_at_nite_client/shared/navigation_service.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;

  const NavBarItem(this.title, this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: Text(
        title,
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
