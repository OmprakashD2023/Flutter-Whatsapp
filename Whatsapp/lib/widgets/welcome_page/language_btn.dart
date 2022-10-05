//Packages
import 'package:flutter/material.dart';

//Theme
import '../../models/colours.dart';

class LanguageButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colours.backgroundDark,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(20),
        splashFactory: NoSplash.splashFactory,
        highlightColor: Colours.backgroundDark,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Icon(
                Icons.language,
                color: Colours.greenDark,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'English',
                style: TextStyle(
                  color: Colours.greenDark,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: Colours.greenDark,
              ),
            ],
          ),
        ),
      ),
    );
  }
}