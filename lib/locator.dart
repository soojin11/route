import 'package:get_it/get_it.dart';
import 'package:website_prac/services/nav_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  //요청되면 한번만
  locator.registerLazySingleton(() => NavService());
}
