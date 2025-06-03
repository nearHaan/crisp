import 'package:crisp/utils/app_style.dart';
import 'package:flutter/material.dart';

class HomeTopBox extends StatelessWidget {
  const HomeTopBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Center(
        child: Column(
          children: [
            Image(
              height: 80,
              width: 80,
              image: const AssetImage(
                  'assets/images/org_logo.png'
              ),
              color: AppStyle.green,
            ),
            Text(
              'CRISP',
              style: AppStyle.logoText.copyWith(color: AppStyle.green),
            ),
            Text(
              'COMPREHENSIVE RUBBER INFORMATION\nSYSTEM PLATFORM',
              style: AppStyle.boldSmallText.copyWith(color: AppStyle.green),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
