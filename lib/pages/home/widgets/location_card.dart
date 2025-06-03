import 'package:crisp/utils/app_style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LocationCard extends StatelessWidget {
  final int index;
  final String title;
  final String subTitle;
  final Function onClick;
  LocationCard({
    super.key,
    required this.index,
    required this.title,
    required this.subTitle,
    required this.onClick,
});

  List<Color> colors = [
    AppStyle.yellow,
    AppStyle.green,
    AppStyle.red,
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onClick(index);
      },
      child: Container(
        margin: EdgeInsets.only(right: 10),
        clipBehavior: Clip.hardEdge,
        width: 130,
        decoration: BoxDecoration(
            color: colors[index%colors.length],
            borderRadius: BorderRadius.circular(30)
        ),
        child: Column(
          children: [
            Expanded(
              flex: 6,
              child: SizedBox(
                child: Stack(
                  children: [
                    Positioned(
                      right: 15,
                      top: 15,
                      child: Image(
                        image: AssetImage('assets/images/org_logo.png'),
                        height: 25,
                        width: 25,
                        color: Colors.blue,
                      ),
                    ),
                    Positioned(
                      top: 0,
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.home_rounded,
                            color: Colors.white,
                            size: 35,
                          ),
                          Text(
                            title,
                            style: AppStyle.smallText.copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                color: Color(0x40000000),
                child: Center(
                  child: Text(
                    subTitle,
                    style: AppStyle.smallText.copyWith(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
