//Packages
import 'package:flutter/material.dart';
import 'package:whatsapp/theme/dark_theme.dart';
import 'package:whatsapp/theme/light_theme.dart';
import 'package:page_transition/page_transition.dart';

//Pages
import './pages/welcome_page.dart';
import './pages/auth/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp',
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.system,
      // home: WelcomePage(), //Welcome Page UI
      // home: LoginPage(), //Login Page UI
      initialRoute: '/',
      routes: {
        '/':(context) => WelcomePage(),
      //   LoginPage.routeName: (context) => LoginPage(),
      },
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/loginPage':
            return PageTransition(
              child: LoginPage(),
              type: PageTransitionType.rightToLeftWithFade,
            );
          default:
            return null;
        }
      },
    );
  }
}
