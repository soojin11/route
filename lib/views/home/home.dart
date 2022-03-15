import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:website_prac/nav_drawer/nav_drawer.dart';
import 'package:website_prac/views/home/home_desktop.dart';
import 'package:website_prac/views/home/home_mobile.dart';
import 'package:website_prac/widgets/call_to_action/call_to_action.dart';
import 'package:website_prac/widgets/centered_view/centered_view.dart';
import 'package:website_prac/widgets/navigation_bar/navigation_bar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const HomeMobile(),
      desktop: const HomeDesktop(),
    );
  }
}
