import 'package:crisp/utils/app_style.dart';
import 'package:flutter/material.dart';

class TopBox extends StatelessWidget {
  const TopBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppStyle.yellow,
      height: MediaQuery.of(context).size.height*0.4,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/images/org_logo.png'),
              height: 100,
              width: 100,
              color: AppStyle.green,
            ),
            Text(
              'CRISP',
              style: AppStyle.logoText,
            ),
            Text(
              'COMPREHENSIVE RUBBER INFORMATION\nSYSTEM PLATFORM',
              style: AppStyle.boldSmallText,
              textAlign: TextAlign.center,
            ),
            Text(
              'Rubber Research Institute of India',
              style: AppStyle.smallText.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}