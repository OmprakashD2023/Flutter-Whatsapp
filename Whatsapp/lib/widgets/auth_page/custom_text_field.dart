import 'package:flutter/material.dart';

import '../../models/colours.dart';
import '../../theme/extension/custom_theme.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final bool? readOnly;
  final TextAlign? textAlign;
  final TextInputType? keyBoardType;
  final String? prefixText;
  final VoidCallback? onTap;
  final Widget? suffixIcon;
  final Function(String)? onChanged;

  const CustomTextField({
    this.controller,
    this.hintText,
    this.readOnly,
    this.textAlign,
    this.keyBoardType,
    this.prefixText,
    this.onTap,
    this.suffixIcon,
    this.onChanged,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      controller: controller,
      readOnly: readOnly ?? false,
      textAlign: textAlign ?? TextAlign.center,
      keyboardType: readOnly == null ? keyBoardType : null,
      decoration: InputDecoration(
        isDense: true,
        prefixText: prefixText,
        suffix: suffixIcon,
        hintText: hintText,
        hintStyle: TextStyle(
          color: context.theme.greyColor,
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colours.greenDark,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colours.greenDark,
            width: 2,
          ),
        ),
      ),
    );
  }
}
