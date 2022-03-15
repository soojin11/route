import 'package:flutter/material.dart';
import 'package:website_prac/widgets/call_to_action/call_to_action.dart';
import 'package:website_prac/widgets/course_details/course_detail.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        CourseDetails(),
        SizedBox(height: 100),
        CallToAction(title: 'Join Course')
      ],
    );
  }
}
