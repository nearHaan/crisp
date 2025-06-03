import 'package:crisp/utils/app_style.dart';
import 'package:flutter/material.dart';

class ForgotPassBox extends StatelessWidget {
  const ForgotPassBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            //
          },
          child: Text(
            'Forgot Password?',
            style: AppStyle.smallText,
          ),
        )
      ],
    );
  }
}