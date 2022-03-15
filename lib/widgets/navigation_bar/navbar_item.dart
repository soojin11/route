import 'package:flutter/material.dart';
import 'package:website_prac/locator.dart';
import 'package:website_prac/services/nav_service.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navPath;

  const NavBarItem({Key? key, required this.title, required this.navPath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<NavService>().navigateTo(navPath);
      },
      child: Text(
        title,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}
