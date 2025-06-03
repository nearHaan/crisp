import 'package:crisp/utils/app_style.dart';
import 'package:flutter/material.dart';

class LoginBtn extends StatelessWidget {
  const LoginBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //
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