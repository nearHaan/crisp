import 'package:crisp/utils/app_style.dart';
import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  final int id;
  final String title;
  final String imagePath;
  final Function onClick;
  const GridItem({
    super.key,
    required this.id,
    required this.title,
    required this.imagePath,
    required this.onClick
});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onClick(id);
      },
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: AppStyle.green,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Center(
                child: Image(
                  image: AssetImage(imagePath),
                  height: 45,
                  width: 45,
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              title,
              style: AppStyle.smallText,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
