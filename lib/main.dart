import 'dart:js';

import 'package:flutter/material.dart';
import 'package:website_prac/locator.dart';
import 'package:website_prac/routing/route_names.dart';
import 'package:website_prac/routing/router.dart';
import 'package:website_prac/services/nav_service.dart';
import 'package:website_prac/views/about/about_view.dart';
import 'package:website_prac/views/episodes/episodes_view.dart';
import 'package:website_prac/views/home/home.dart';
import 'package:website_prac/views/layout/layout.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home': (context) => Home(),
        '/about': (context) => AboutView(),
        '/episodes': (context) => EpisodesView()
      },
      builder: (_, child) => Layout(child: child!),
      navigatorKey: locator<NavService>().navKey,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // builder: (_, child) => Layout(child: child!),
      // navigatorKey: locator<NavService>().navKey,
      // onGenerateRoute: generateRoute,
      // initialRoute: HomeRoute,
    );
  }
}
