import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:website_prac/widgets/call_to_action/action_desktop.dart';
import 'package:website_prac/widgets/call_to_action/action_mobile.dart';

class CallToAction extends StatelessWidget {
  final String title;
  const CallToAction({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const ActionMobile(title: 'Join Course'),
      desktop: const ActionDesktop(title: 'Join Course'),
    );
  }
}
