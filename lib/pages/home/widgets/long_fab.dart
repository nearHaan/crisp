import 'package:crisp/utils/app_style.dart';
import 'package:flutter/material.dart';

class LongFAB extends StatelessWidget {
  final IconData icon;
  final String text;
  const LongFAB({
    super.key,
    required this.icon,
    required this.text
});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppStyle.green,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.white, size: 30,),
          SizedBox(width: 10,),
          Text(text, style: AppStyle.mediumText.copyWith(color: Colors.white),)
        ],
      ),
    );
  }
}
