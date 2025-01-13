import 'package:evently_c13/core/app_theme.dart';
import 'package:evently_c13/providers/language_provider.dart';
import 'package:evently_c13/providers/theme_provider.dart';
import 'package:evently_c13/ui/screens/forget_password.dart';
import 'package:evently_c13/ui/screens/login_screen.dart';
import 'package:evently_c13/ui/screens/register_screen.dart';
import 'package:evently_c13/ui/screens/setup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await EasyLocalization.ensureInitialized();
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => ThemeProvider(
        sharedPreferences.getBool(ThemeProvider.isLightModeKey) ?? true
      )),
      ChangeNotifierProvider(create: (_){
        return LanguageProvider(sharedPreferences.getString(LanguageProvider.localeKey));
      }),
    ],
    child: MyApp(),)
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LanguageProvider languageProvider = Provider.of<LanguageProvider>(context);
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      // localizationsDelegates: context.localizationDelegates,
      // supportedLocales: context.supportedLocales,
      // locale: context.locale,
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeProvider.currentTheme,
      initialRoute: SetupScreen.routeName,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(languageProvider.currentLocale),
      routes: {
        SetupScreen.routeName: (_) => const SetupScreen(),
        LoginScreen.routeName: (_) => const LoginScreen(),
        RegisterScreen.routeName: (_) => const RegisterScreen(),
        ForgetPassword.routeName: (_) => const ForgetPassword()
      },
    );
  }
}
