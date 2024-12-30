import 'package:evently_c13/core/app_assets.dart';
import 'package:evently_c13/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class ForgetPassword extends StatelessWidget {
  static const String routeName = "/ForgetPassword";
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Forget Password",
            style: TextStyle(color: AppColors.black),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(AppAssets.changeSettingImage),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                style: Theme.of(context).textTheme.bodyLarge,
                cursorColor: Theme.of(context).primaryColor,
                decoration: const InputDecoration(
                    prefixIcon: Icon(EvaIcons.email), hintText: "Email"),
              ),
              const SizedBox(
                height: 20,
              ),
              FilledButton(
                  onPressed: () {}, child: const Text("Reset Password"))
            ],
          ),
        ),
      ),
    );
  }
}
