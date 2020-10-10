import 'dart:js';

import 'package:flutter/material.dart';
import 'package:jerk_at_nite_client/features/cart/presentation/pages/cart_screen.dart';
import 'package:jerk_at_nite_client/features/navigation/data/datasources/route_names.dart';
import 'package:jerk_at_nite_client/features/navigation/presentation/pages/about_screen.dart';
import 'package:jerk_at_nite_client/features/navigation/presentation/pages/home_screen.dart';
import 'package:jerk_at_nite_client/features/orders/presentation/pages/order_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return MaterialPageRoute(builder: (context) => HomeScreen());
    case AboutRoute:
      return MaterialPageRoute(builder: (context) => AboutScreen());
    case CartRoute:
      return MaterialPageRoute(builder: (context) => CartScreen());
    case OrderRoute:
      return MaterialPageRoute(builder: (context) => OrderScreen());
    default:
      return MaterialPageRoute(builder: (context) => HomeScreen());
  }
}
