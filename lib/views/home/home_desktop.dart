import 'package:flutter/material.dart';
import 'package:website_prac/widgets/call_to_action/call_to_action.dart';
import 'package:website_prac/widgets/course_details/course_detail.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        CourseDetails(),
        Expanded(
            child: Center(
          child: CallToAction(title: 'Join Course'),
        ))
      ],
    );
  }
}
