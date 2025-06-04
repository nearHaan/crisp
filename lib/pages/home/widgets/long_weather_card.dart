import 'package:crisp/utils/app_style.dart';
import 'package:flutter/material.dart';

class LongWeatherCard extends StatelessWidget {
  const LongWeatherCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF022c68),
            Color(0xFF4e7fb3)
          ]
        )
      ),
      margin: EdgeInsets.only(right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('2025-03-23', style: AppStyle.mediumText.copyWith(color: Colors.white),),
          Text('Tuesday', style: AppStyle.smallText.copyWith(color: Colors.white),),
          Text('11:30pm', style: AppStyle.mediumText.copyWith(color: Colors.white),),
          SizedBox(
            height: 80,
            child: Center(
              child: Image(image: AssetImage('assets/images/org_logo.png'), height: 50,),
            ),
          ),
          Text('Light Rain', style: AppStyle.smallText.copyWith(color: Colors.white),),
          Text('29°C', style: AppStyle.mediumText.copyWith(color: Colors.white),),
          Column(
            children: [
              Icon(Icons.water_drop_rounded, color: Colors.white, size: 20,),
              Text('73%', style: AppStyle.mediumText.copyWith(color: Colors.white),)
            ],
          )
        ],
      ),
    );
  }
}
