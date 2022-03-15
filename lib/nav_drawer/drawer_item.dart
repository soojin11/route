import 'package:flutter/material.dart';
import 'package:website_prac/widgets/navigation_bar/navbar_item.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final String navPath;

  const DrawerItem(
      {Key? key,
      required this.title,
      required this.icon,
      required this.navPath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 60),
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(width: 30),
          NavBarItem(
            title: title,
            navPath: navPath,
          ),
        ],
      ),
    );
  }
}
