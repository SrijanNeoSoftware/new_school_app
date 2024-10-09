import 'package:flutter/material.dart';
import 'package:st_joseph_school/constants/router_constants.dart';
import 'package:st_joseph_school/constants/string_constants.dart';
import 'package:st_joseph_school/constants/ui_constants.dart';
import 'package:st_joseph_school/utils/ui_helper.dart';

class LoginFormBuilder extends StatefulWidget {
  const LoginFormBuilder({super.key});

  @override
  State<LoginFormBuilder> createState() => LoginFormBuilderState();
}

class LoginFormBuilderState extends State<LoginFormBuilder> {
  late TextEditingController _username;
  late TextEditingController _password;

  @override
  void initState() {
    _username = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(UIConstants.logo),
            UIHelper.verticalSpaceMedium(context),
            Text(
              "L O G I N",
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            UIHelper.verticalSpaceSmall(context),
            TextFormField(
              controller: _username,
              decoration: const InputDecoration(
                label: Text(AppStrings.username),
                border: OutlineInputBorder(),
              ),
            ),
            UIHelper.verticalSpaceSmall(context),
            TextFormField(
              controller: _password,
              decoration: const InputDecoration(
                label: Text(AppStrings.password),
                border: OutlineInputBorder(),
              ),
            ),
            UIHelper.verticalSpaceMedium(context),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .pushReplacementNamed(RouterStrings.homeScreen);
              },
              child: const Text(
                AppStrings.login,
              ),
            )
          ],
        ),
      ),
    );
  }
}
