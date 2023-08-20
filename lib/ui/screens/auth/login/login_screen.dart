import 'package:flutter/material.dart';
import 'package:medcloud/helper/import_helper.dart';
import 'package:medcloud/ui/theme/sizes/styles_manager.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScreen(
        child: Column(
          children: [
            SizedBox(
              height: height(context, 0.1),
            ),
            Text(
              Constants.logIn,
              style: getMediumStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
