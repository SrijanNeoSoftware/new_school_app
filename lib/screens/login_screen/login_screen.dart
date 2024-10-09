import 'package:flutter/material.dart';
import 'package:st_joseph_school/constants/ui_constants.dart';
import 'package:st_joseph_school/screens/login_screen/components/login_form_builder.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: UIConstants.screenMargin,
        child: const LoginFormBuilder(),
      ),
    );
  }
}
