import 'package:flutter/material.dart';
import 'package:st_joseph_school/constants/ui_constants.dart';
import 'package:st_joseph_school/screens/notice_board_screen/components/notice_builders.dart';

class NoticeBoardScreen extends StatelessWidget {
  const NoticeBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: UIConstants.screenMargin,
        child: NoticeBuilders(),
      ),
    );
  }
}
