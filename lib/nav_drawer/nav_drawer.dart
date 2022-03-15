import 'package:flutter/material.dart';
import 'package:website_prac/nav_drawer/drawer_item.dart';
import 'package:website_prac/nav_drawer/nav_drawer_header.dart';
import 'package:website_prac/routing/route_names.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)]),
      child: Column(
        children: const [
          NavDrawerHeader(),
          DrawerItem(
            title: 'Episodes',
            icon: Icons.videocam,
            navPath: EpisodesRoute,
          ),
          DrawerItem(
            title: 'About',
            icon: Icons.help,
            navPath: AboutRoute,
          )
        ],
      ),
    );
  }
}
