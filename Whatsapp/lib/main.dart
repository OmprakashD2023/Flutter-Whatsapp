//Packages
import 'package:flutter/material.dart';

//Pages
import './pages/welcome_page.dart';

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
      theme: ThemeData.dark(),
      home: WelcomePage(),//Welcome Page UI
    );
  }
}
