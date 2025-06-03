import 'package:crisp/utils/app_style.dart';
import 'package:flutter/material.dart';

class PageViewListTile extends StatelessWidget {
  final String title;
  final double rup;
  final double r_c;
  final double dol;
  final double d_c;
  const PageViewListTile({
    super.key,
    required this.title,
    required this.rup,
    required this.r_c,
    required this.dol,
    required this.d_c
});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: AppStyle.smallText,
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Text(
              rup.toString(),
              style: AppStyle.smallText,
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Icon(
              r_c>0?Icons.arrow_upward_rounded:(r_c<0?Icons.arrow_downward:Icons.price_change),
              size: 20,
              color: r_c>0?AppStyle.green:(r_c<0?AppStyle.red:AppStyle.yellow),
            ),
          ),
          Expanded(
            child: Text(
              dol.toString(),
              style: AppStyle.smallText,
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Icon(
              d_c>0?Icons.arrow_upward_rounded:(d_c<0?Icons.arrow_downward:Icons.price_change),
              size: 20,
              color: d_c>0?AppStyle.green:(d_c<0?AppStyle.red:AppStyle.yellow),
            ),
          )
        ],
      ),
    );
  }
}
