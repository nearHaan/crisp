import 'package:crisp/pages/home/widgets/bar_title.dart';
import 'package:crisp/pages/home/widgets/page_container.dart';
import 'package:crisp/pages/home/widgets/page_menu_tab.dart';
import 'package:crisp/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class RbPriceBox extends StatelessWidget {
  final PageController pageController;
  final Map pageMap;
  final List<String> pageKeys;
  const RbPriceBox({
    super.key,
    required this.pageController,
    required this.pageMap,
    required this.pageKeys
});

  @override
  Widget build(BuildContext context) {
    return Column(
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
                  height: 300,
                  child: PageView(
                    controller: pageController,
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
                ),
                SizedBox(height: 10,),
                SmoothPageIndicator(
                    controller: pageController,
                    count:  pageKeys.length,
                    effect:  ScrollingDotsEffect(
                      dotHeight: 10,
                      dotWidth: 10,
                      activeDotColor: AppStyle.blue,
                    )
                )
              ],
            )
        ),
      ],
    );
  }
}
