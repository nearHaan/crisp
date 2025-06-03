import 'package:crisp/utils/app_style.dart';
import 'package:flutter/material.dart';

class PageMenuTab extends StatelessWidget {
  final int id;
  final String title;
  final Function onClick;
  final int active;
  const PageMenuTab({
    super.key,
    required this.id,
    required this.title,
    required this.onClick,
    required this.active,
});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onClick(title);
      },
      child: Container(
        decoration: BoxDecoration(
            color: id==active?AppStyle.blue:Colors.white,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.black, width: 1)
        ),
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Center(
          child: Text(
            title,
            style: id==active?AppStyle.smallText.copyWith(color: Colors.white):AppStyle.smallText,
          ),
        ),
      ),
    );
  }
}
