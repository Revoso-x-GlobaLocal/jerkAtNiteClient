import 'package:flutter/material.dart';
import 'package:jerk_at_nite_client/features/navigation/data/datasources/route_names.dart';
import 'package:jerk_at_nite_client/features/navigation/domain/usecases/router.dart';
import 'package:jerk_at_nite_client/shared/locator.dart';
import 'package:jerk_at_nite_client/shared/navigation_service.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'navigation_bar.dart';
import 'navigation_drawer.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            NavigationBar(),
            Expanded(
              child: Navigator(
                key: locator<NavigationService>().navigatorKey,
                onGenerateRoute: generateRoute,
                initialRoute: HomeRoute,
              ),
            )
          ],
        ),
      ),
    );
  }
}
