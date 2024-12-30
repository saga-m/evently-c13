import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class LanguageSwitcher extends StatefulWidget {
  const LanguageSwitcher({super.key});

  @override
  State<LanguageSwitcher> createState() => _LanguageSwitcherState();
}

class _LanguageSwitcherState extends State<LanguageSwitcher> {
  var selectedLocal = "ar";

  @override
  Widget build(BuildContext context) {
    return AnimatedToggleSwitch<String>.rolling(
      current: selectedLocal,
      values: const ["ar", "en"],
      style: ToggleStyle(
          backgroundColor: Colors.transparent,
          indicatorColor: Theme.of(context).primaryColor,
          borderColor: Theme.of(context).primaryColor),
      onChanged: (newLocal) {
        selectedLocal = newLocal;
        setState(() {});
        // setState(() => value = i);
        // return Future<dynamic>.delayed(const Duration(seconds: 3));
      },
      iconBuilder: (value, foreground) {
        if (value == "ar") {
          return Flag(Flags.egypt);
        } else {
          return Flag(Flags.united_states_of_america);
        }
      },
    );
  }
}
