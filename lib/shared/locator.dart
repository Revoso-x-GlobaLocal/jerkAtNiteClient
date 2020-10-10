

import 'package:get_it/get_it.dart';
import 'package:jerk_at_nite_client/shared/navigation_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
 
}