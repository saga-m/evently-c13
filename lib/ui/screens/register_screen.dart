import 'package:evently_c13/core/app_assets.dart';
import 'package:evently_c13/core/app_colors.dart';
import 'package:evently_c13/ui/widgets/language_switcher.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class RegisterScreen extends StatelessWidget {
  static const String routeName = "RegisterScreen";
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Register",
          style: TextStyle(color: AppColors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Image.asset(
              AppAssets.appVerticalLogoImage,
              height: MediaQuery.sizeOf(context).height * .22,
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              style: Theme.of(context).textTheme.bodyLarge,
              cursorColor: Theme.of(context).primaryColor,
              decoration: const InputDecoration(
                  prefixIcon: Icon(EvaIcons.person), hintText: "Name"),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              style: Theme.of(context).textTheme.bodyLarge,
              cursorColor: Theme.of(context).primaryColor,
              decoration: const InputDecoration(
                  prefixIcon: Icon(EvaIcons.email), hintText: "Email"),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              style: Theme.of(context).textTheme.bodyLarge,
              cursorColor: Theme.of(context).primaryColor,
              decoration: const InputDecoration(
                  suffixIcon: Icon(EvaIcons.eye),
                  prefixIcon: Icon(EvaIcons.lock),
                  hintText: "Password"),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              style: Theme.of(context).textTheme.bodyLarge,
              cursorColor: Theme.of(context).primaryColor,
              decoration: const InputDecoration(
                  suffixIcon: Icon(EvaIcons.eye),
                  prefixIcon: Icon(EvaIcons.lock),
                  hintText: "Re Password"),
            ),
            const SizedBox(
              height: 15,
            ),
            FilledButton(onPressed: () {}, child: const Text("Create Account")),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Already Have Account ? ",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const Text(
                  "Login",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LanguageSwitcher(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
