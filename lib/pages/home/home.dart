import 'package:crisp/pages/home/widgets/rb_facilities.dart';
import 'package:crisp/pages/home/widgets/site_specific.dart';
import 'package:crisp/pages/login/widgets/home_top_box.dart';
import 'package:crisp/utils/app_style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<List<dynamic>> recList = [
    [1, 'Clones', 'assets/images/org_logo.png'],
    [2, 'Planting Pits', 'assets/images/org_logo.png'],
    [3, 'Plant Spacing/Density', 'assets/images/org_logo.png'],
    [4, 'Intercrops', 'assets/images/org_logo.png'],
    [5, 'Rubsis', 'assets/images/org_logo.png'],
    [6, 'Non-parasitic Disorders', 'assets/images/org_logo.png'],
  ];

  List<String> locations = [
    'Thiruvananthapuram',
    'Kollam',
    'Kottayam'
  ];

  List<List<String>> facilites = [
    ['Title 1', 'Subtitle 1'],
    ['Title 2', 'Subtitle 2'],
    ['Title 3', 'Subtitle 3'],
    ['Title 4', 'Subtitle 4'],
    ['Title 5', 'Subtitle 5'],
    ['Title 6', 'Subtitle 6'],
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'CRSIP',
            style: AppStyle.logoText,
            textAlign: TextAlign.center,
          ),
          centerTitle: true,
          backgroundColor: AppStyle.yellow,
          leading: IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
          actions: [
            IconButton(
                onPressed: (){},
                icon: Icon(
                  Icons.notifications,
                  color: Colors.white,
                )
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              HomeTopBox(),
              SiteSpecificRecommendations(recList: recList),
              RubberBoardFacilities(locations: locations, facilites: facilites)
            ]
          )
        ),
      ),
    );
  }
}
