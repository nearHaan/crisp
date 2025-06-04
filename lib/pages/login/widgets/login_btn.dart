import 'package:crisp/utils/app_style.dart';
import 'package:flutter/material.dart';

class LoginBtn extends StatelessWidget {
  final Function onClick;
  const LoginBtn({
    super.key,
    required this.onClick
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onClick();
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: AppStyle.yellow
        ),
        padding: EdgeInsets.all(10),
        child: Center(
          child: Text(
            'LOGIN',
            style: AppStyle.mediumText,
          ),
        ),
      ),
    );
  }
}