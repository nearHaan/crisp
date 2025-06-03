import 'package:crisp/pages/home/widgets/grid_item.dart';
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
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                HomeTopBox(),
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: AppStyle.grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Site Specific Recommendations',
                        style: AppStyle.mediumText.copyWith(color: Colors.black),
                      ),
                      SizedBox(height: 10,),
                      GridView.count(
                        shrinkWrap: true,
                        crossAxisCount: 3,
                        childAspectRatio: 1,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        children: List.generate(
                          6,
                          (index){
                            return GridItem(
                                id: recList[index][0],
                                title: recList[index][1],
                                imagePath: recList[index][2],
                                onClick: (){}
                            );
                          }
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
