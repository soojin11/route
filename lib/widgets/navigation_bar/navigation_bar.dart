import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:website_prac/widgets/navigation_bar/nav_bar_tablet_desktop.dart';
import 'nav_bar_mobile.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const NavBarMobile(),
      tablet: const NavBarTabletDesktop(),
    );
  }
}
