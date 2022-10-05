//Packages
import 'package:flutter/material.dart';

//Widgets
import '../widgets/welcome_page/language_btn.dart';
import '../widgets/welcome_page/privacy_terms.dart';
import '../widgets/welcome_page/custom_elevated_btn.dart';

//Theme
import '../theme/extension/custom_theme.dart';

class WelcomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 10,
                ),
                child: Image.asset(
                  'assets/images/circle.png',
                  color: context.theme.circleImageColor,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  'Welcome To Whatsapp',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                PrivacyAndTerms(),
                CustomElevatedButton(
                  onPressed: (){},
                  text: 'AGREE AND CONTINUE',
                ),
                const SizedBox(
                  height: 50,
                ),
                LanguageButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




