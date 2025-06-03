import 'package:crisp/pages/home/widgets/page_view_list_tile.dart';
import 'package:crisp/utils/app_style.dart';
import 'package:flutter/material.dart';

class PageContainer extends StatelessWidget {
  final String pageTitle;
  final Map<String, Map<String, double>> values;
  const PageContainer({
    super.key,
    required this.pageTitle,
    required this.values
});

  @override
  Widget build(BuildContext context) {
    List keys = values.keys.toList();
    return Container(
      clipBehavior: Clip.hardEdge,
      margin: EdgeInsets.all(2),
      padding: EdgeInsets.all(0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.black, blurRadius: 1),
          ]
      ),
      child: Column(
        children: [
          Container(
            height: 40,
            width: double.infinity,
            color: AppStyle.blue,
            child: Center(
              child: Text(
                pageTitle,
                style: AppStyle.smallText.copyWith(color: Colors.white),
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: keys.length,
            itemBuilder: (context, index){
              print(values[keys[index]]);
              return PageViewListTile(
                  title: keys[index],
                  rup: values[keys[index]]!['rupees']!,
                  r_c: values[keys[index]]!['r-c']!,
                  dol: values[keys[index]]!['dollars']!,
                  d_c: values[keys[index]]!['d-c']!
              );
            },
          )
        ],
      ),
    );
  }
}
