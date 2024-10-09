import 'package:flutter/material.dart';
import 'package:st_joseph_school/constants/string_constants.dart';
import 'package:st_joseph_school/constants/ui_constants.dart';
import 'package:st_joseph_school/utils/ui_helper.dart';

class AchievementsBuilder extends StatelessWidget {
  const AchievementsBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        UIHelper.verticalSpaceMedium(context),
        Text("Achievements", style: Theme.of(context).textTheme.titleLarge),
        UIHelper.verticalSpaceTiny(context),
        Text("234 Achievements", style: Theme.of(context).textTheme.titleSmall),
        UIHelper.verticalSpaceSmall(context),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.all(0),
            itemCount: 7,
            itemBuilder: (context, index) => Card(
              child: SizedBox(
                  height: 200,
                  child: Image.asset(
                    "assets/${index + 1}.jpg",
                    fit: BoxFit.fill,
                  )),
            ),
          ),
        ),
        UIHelper.verticalSpaceTiny(context),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                  onPressed: () {}, child: Text(AppStrings.editAchievements)),
            ),
            UIHelper.horizontalSpaceSmall(context),
            Expanded(
              child: ElevatedButton(
                  onPressed: () {}, child: Text(AppStrings.viewAchievement)),
            ),
          ],
        )
      ],
    );
  }
}
