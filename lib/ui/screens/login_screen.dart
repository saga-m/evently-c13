import 'package:evently_c13/core/app_assets.dart';
import 'package:evently_c13/ui/screens/forget_password.dart';
import 'package:evently_c13/ui/screens/register_screen.dart';
import 'package:evently_c13/ui/widgets/language_switcher.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:evently_c13/l10n/app_translations.dart';

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
                decoration: InputDecoration(
                    prefixIcon: Icon(EvaIcons.email), hintText:
                getTranslations(context).email),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                style: Theme.of(context).textTheme.bodyLarge,
                cursorColor: Theme.of(context).primaryColor,
                decoration: InputDecoration(
                    suffixIcon: Icon(EvaIcons.eye),
                    prefixIcon: Icon(EvaIcons.lock),
                    hintText: getTranslations(context).password),
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
                      child: Text(getTranslations(context).forget_passwort))),
              const SizedBox(
                height: 10,
              ),
              FilledButton(onPressed: () {}, child: Text(getTranslations(context).login)),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    getTranslations(context).dont_have_account,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(RegisterScreen.routeName);
                    },
                    child: Text(
                      getTranslations(context).create_account,
                      style: const TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    const Expanded(child: Divider()),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(getTranslations(context).or),
                    ),
                    const Expanded(child: Divider()),
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
                    Text(getTranslations(context).login_with_google)
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
