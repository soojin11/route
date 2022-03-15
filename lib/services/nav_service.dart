import 'package:flutter/cupertino.dart';

class NavService {
  final GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(String routeName) {
    return navKey.currentState!.pushNamed(routeName);
  }

  void goBack() {
    return navKey.currentState!.pop();
  }
}
