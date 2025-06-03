import 'package:crisp/pages/home/widgets/bar_title.dart';
import 'package:crisp/pages/home/widgets/page_container.dart';
import 'package:crisp/pages/home/widgets/page_menu_tab.dart';
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

  //-1: decrease, 0: no change, 1: increase
  Map<String, Map<String, Map<String, double>>> pageMap = {
    'Kottayam': {
      'RSS4': {
        'rupees':20000,
        'r-c': 0,
        'dollars':234.1,
        'd-c': -1,
      },
      'ABC': {
        'rupees':20000,
        'r-c': -1,
        'dollars':234.1,
        'd-c': 1,
      },
      'PQR': {
        'rupees':20000,
        'r-c': 1,
        'dollars':234.1,
        'd-c': -1,
      },
      'TUV': {
        'rupees':20000,
        'r-c': 1,
        'dollars':234.1,
        'd-c': -1,
      }
    },
    'Kollam': {
      'RSS4': {
        'rupees':20000,
        'r-c': 1,
        'dollars':234.1,
        'd-c': -1,
      },
      'ABC': {
        'rupees':20000,
        'r-c': 1,
        'dollars':234.1,
        'd-c': -1,
      },
    }
  };

  @override
  Widget build(BuildContext context) {
    List pageKeys = pageMap.keys.toList();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
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
              RubberBoardFacilities(locations: locations, facilites: facilites),
              Column(
                children: [
                  BarTitle(title: 'Rubber market price per 100kg on 03-06-2025'),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: PageMenuTab(id: 0, title: 'Domestic', onClick: (){}, active: 0,),
                            ),
                            SizedBox(width: 10,),
                            Expanded(
                              child: PageMenuTab(id: 1, title: 'International', onClick: (){}, active: 0,),
                            )
                          ],
                        ),
                        SizedBox(height: 10,),
                        SizedBox(
                          height: 200,
                          child: PageView(
                            scrollDirection: Axis.horizontal,
                            children: List.generate(
                              pageMap.length,
                              (index){
                                return PageContainer(
                                  pageTitle: pageKeys[index],
                                  values: pageMap[pageKeys[index]]!,
                                );
                              }
                            ),
                          ),
                        )
                      ],
                    )
                  ),
                ],
              )
            ]
          )
        ),
      ),
    );
  }
}
