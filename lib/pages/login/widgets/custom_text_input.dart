import 'package:crisp/utils/app_style.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextInput extends StatelessWidget {
  final String title;
  final IconData icon;
  bool isPassword;
  bool hideText;
  Function? onEyeClick;
  CustomTextInput({
    required this.title,
    required this.icon,
    this.isPassword = false,
    this.hideText = false,
    this.onEyeClick,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPassword?(hideText):false,
      textAlignVertical: TextAlignVertical.center,
      keyboardType: isPassword? TextInputType.visiblePassword: TextInputType.phone,
      style: AppStyle.smallText,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(5),
        prefixIcon: Icon(icon),
        label: Text(
          title,
          style: AppStyle.smallText,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(width: 1)
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(width: 2)
        ),
        suffixIcon: isPassword?IconButton(
          onPressed: () {
            onEyeClick!();
          },
          icon: Icon(hideText?FluentIcons.eye_24_filled:FluentIcons.eye_off_24_filled),
        ):Text('')
      ),
    );
  }
}