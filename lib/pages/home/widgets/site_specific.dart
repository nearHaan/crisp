import 'package:crisp/pages/home/widgets/grid_item.dart';
import 'package:crisp/utils/app_style.dart';
import 'package:flutter/material.dart';

class SiteSpecificRecommendations extends StatelessWidget {
  final List<List<dynamic>> recList;
  const SiteSpecificRecommendations({
    super.key,
    required this.recList
});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
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
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 3,
              childAspectRatio: 1,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: List.generate(
                  recList.length,
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
      ),
    );
  }
}
