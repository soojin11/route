import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:website_prac/locator.dart';
import 'package:website_prac/nav_drawer/nav_drawer.dart';
import 'package:website_prac/routing/route_names.dart';
import 'package:website_prac/routing/router.dart';
import 'package:website_prac/services/nav_service.dart';
import 'package:website_prac/widgets/centered_view/centered_view.dart';
import 'package:website_prac/widgets/navigation_bar/navigation_bar.dart';

class Layout extends StatelessWidget {
  final Widget child;
  const Layout({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (_, size) {
      return Scaffold(
        drawer: size.deviceScreenType == DeviceScreenType.mobile
            ? const NavDrawer()
            : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: [const NavBar(), Expanded(child: child)],
          ),
        ),
      );
    });
  }
}
