import 'package:flutter/material.dart';
import 'package:st_joseph_school/constants/string_constants.dart';
import 'package:st_joseph_school/utils/ui_helper.dart';

class NoticeBuilders extends StatelessWidget {
  const NoticeBuilders({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        UIHelper.verticalSpaceMedium(context),
        Text(
          "Notice Board",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        UIHelper.verticalSpaceTiny(context),
        Text(
          "23 Notices",
          style: Theme.of(context).textTheme.titleSmall,
        ),
        UIHelper.verticalSpaceSmall(context),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.all(0),
            itemCount: 23,
            itemBuilder: (context, index) => ListTile(
              title: Text(
                "${index + 1}. ISC(Class XII) Year 2024 Examination Timetable & Instructions",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              subtitle: Text("Updated on 22-08-2024"),
            ),
          ),
        ),
        UIHelper.verticalSpaceSmall(context),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  AppStrings.editNoticeBoards,
                ),
              ),
            ),
            UIHelper.horizontalSpaceSmall(context),
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  AppStrings.viewNotices,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
