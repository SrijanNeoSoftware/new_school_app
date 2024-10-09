import 'package:flutter/material.dart';
import 'package:st_joseph_school/screens/story_screen/components/story_section.dart';
import 'package:st_joseph_school/utils/ui_helper.dart';

class StoryScreen extends StatelessWidget {
  const StoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          UIHelper.verticalSpaceMedium(context),
          StorySection(),
        ],
      ),
    );
  }
}
