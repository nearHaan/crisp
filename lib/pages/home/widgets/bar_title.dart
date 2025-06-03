import 'package:crisp/utils/app_style.dart';
import 'package:flutter/material.dart';

class BarTitle extends StatelessWidget {
  final String title;
  const BarTitle({
    super.key,
    required this.title
});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      color: AppStyle.grey,
      child: Text(
        title,
        style: AppStyle.mediumText,
      ),
    );
  }
}
