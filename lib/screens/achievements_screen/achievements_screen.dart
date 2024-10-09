import 'package:flutter/material.dart';
import 'package:st_joseph_school/constants/ui_constants.dart';
import 'package:st_joseph_school/screens/achievements_screen/components/achievements_builder.dart';

class AchievementsScreen extends StatelessWidget {
  const AchievementsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: UIConstants.screenMargin,
        child: AchievementsBuilder(),
      ),
    );
  }
}
