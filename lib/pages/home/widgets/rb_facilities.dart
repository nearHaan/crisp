import 'package:crisp/pages/home/widgets/bar_title.dart';
import 'package:crisp/pages/home/widgets/location_card.dart';
import 'package:crisp/utils/app_style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RubberBoardFacilities extends StatelessWidget {
  final List<String> locations;
  final List<List<String>> facilites;
  RubberBoardFacilities({
    super.key,
    required this.locations,
    required this.facilites
  });

  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BarTitle(title: 'Rubber Board Facilities nearby me'),
        Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              DropdownMenu(
                controller: textEditingController,
                width: double.infinity,
                leadingIcon: Icon(Icons.location_pin),
                label: Text('Current Location', style: AppStyle.smallText,),
                dropdownMenuEntries: List.generate(
                    locations.length,
                        (index){
                      return DropdownMenuEntry(
                        value: locations[index],
                        label: locations[index],
                      );
                    }
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: SizedBox(
                  width: double.infinity,
                  height: 250,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index){
                      return LocationCard(
                          index: index,
                          title: facilites[index][0],
                          subTitle: facilites[index][1],
                          onClick: (){}
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
