//Packages
import 'package:flutter/material.dart';

//Theme
import '../../models/colours.dart';
class PrivacyAndTerms extends StatelessWidget {
  const PrivacyAndTerms({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 20,
      ),
      child: RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(
            text: 'Read our ',
            style: TextStyle(
              color: Colours.greyDark,
              height: 1.5,
            ),
            children: [
              TextSpan(
                text: 'Privacy Policy. ',
                style: TextStyle(
                  color: Colours.blueDark,
                ),
              ),
              TextSpan(
                text: 'Tap "Agree and Contine" to accept the ',
              ),
              TextSpan(
                text: 'Terms of Services.',
                style: TextStyle(
                  color: Colours.blueDark,
                ),
              ),
            ]),
      ),
    );
  }
}