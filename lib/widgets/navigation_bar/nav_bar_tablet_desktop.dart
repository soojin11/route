import 'package:flutter/material.dart';
import 'package:website_prac/routing/route_names.dart';
import 'package:website_prac/widgets/navigation_bar/navbar_logo.dart';

import 'navbar_item.dart';

class NavBarTabletDesktop extends StatelessWidget {
  const NavBarTabletDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              NavBarItem(
                title: 'Episodes',
                navPath: EpisodesRoute,
              ),
              SizedBox(width: 60),
              NavBarItem(
                title: 'About',
                navPath: AboutRoute,
              ),
            ],
          )
        ],
      ),
    );
  }
}
