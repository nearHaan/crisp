import 'package:crisp/pages/home/widgets/bar_title.dart';
import 'package:crisp/pages/home/widgets/long_weather_card.dart';
import 'package:crisp/utils/app_style.dart';
import 'package:flutter/material.dart';

class WeatherContainer extends StatelessWidget {
  const WeatherContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BarTitle(title: 'Current Weather'),
        Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            height: 200,
            padding: EdgeInsets.all(20),
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
            child: Center(
              child: Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Row(
                      children: [
                        Expanded(child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('28°', style: AppStyle.weatherBigText,),
                            Row(
                              children: [
                                Icon(Icons.water_drop_rounded, color: Colors.white,),
                                Text('73%', style: AppStyle.mediumText.copyWith(color: Colors.white),)
                              ],
                            )
                          ],
                        )),
                        Expanded(child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image(image: AssetImage('assets/images/org_logo.png'), height: 60,),
                            Text('Broken Clouds', style: AppStyle.mediumText.copyWith(color: Colors.white),),
                          ],
                        ))
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        Text('Wind: 17km/hr', style: AppStyle.smallText.copyWith(color: Colors.white),),
                        SizedBox(width: 20,),
                        Text('Feels like 32°C', style: AppStyle.smallText.copyWith(color: Colors.white),),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        BarTitle(title: '5 Days Weather Forecast'),
        Padding(
          padding: EdgeInsets.all(10),
          child: SizedBox(
            height: 350,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index){
                return LongWeatherCard();
              },
            ),
          ),
        )
      ],
    );
  }
}
