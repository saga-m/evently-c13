import 'package:evently_c13/core/app_assets.dart';
import 'package:evently_c13/ui/screens/forget_password.dart';
import 'package:evently_c13/ui/screens/register_screen.dart';
import 'package:evently_c13/ui/widgets/language_switcher.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = "/LoginScreen";
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
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
                height: 10,
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(ForgetPassword.routeName);
                      },
                      child: const Text("Forget password?"))),
              const SizedBox(
                height: 10,
              ),
              FilledButton(onPressed: () {}, child: const Text("Login")),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Don’t Have Account ?",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(RegisterScreen.routeName);
                    },
                    child: const Text(
                      "Create Account",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    Expanded(child: Divider()),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text("Or"),
                    ),
                    Expanded(child: Divider()),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              FilledButton(
                onPressed: () {},
                style: FilledButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    foregroundColor: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                        side:
                            BorderSide(color: Theme.of(context).primaryColor))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Brand(Brands.google),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text("Login With Google")
                  ],
                ),
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
      ),
    );
  }
}
