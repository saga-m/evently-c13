import 'package:evently_c13/providers/AuthProvider.dart';
import 'package:evently_c13/ui/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:evently_c13/core/dialog_utils.dart';

class Homescreen extends StatefulWidget {
  static const String routeName = "home";

  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                logout();
              },
              icon: Icon(Icons.logout))
        ],
      ),
    );
  }

  void logout() {
    var authProvider = Provider.of<AuthProvider>(context, listen: false);
    showMessageDialog("Please Confirm logout", posActionTitle: "logout",
        posAction: () {
      authProvider.logout();
      Navigator.pushReplacementNamed(context, LoginScreen.routeName);
    }, negActionTitle: "cancel");
  }
}
