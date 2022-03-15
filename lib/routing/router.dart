import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:website_prac/routing/route_names.dart';
import 'package:website_prac/views/about/about_view.dart';
import 'package:website_prac/views/episodes/episodes_view.dart';
import 'package:website_prac/views/home/home.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(Home());
    case AboutRoute:
      return _getPageRoute(AboutView());
    case EpisodesRoute:
      return _getPageRoute(EpisodesView());

    default:
      return _getPageRoute(Home());
  }
}

PageRoute _getPageRoute(Widget child) {
  // return MaterialPageRoute(builder: (context) => child);
  return _FadeRoute(child: child);
}

//animation 주는 것
class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  _FadeRoute({required this.child})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => child,
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
