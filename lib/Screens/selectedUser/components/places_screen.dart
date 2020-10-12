import 'package:flutter/material.dart';
import 'package:whereapp_flutter/Widgets/add_place.dart';
import 'package:whereapp_flutter/Widgets/map_widget.dart';
import 'package:whereapp_flutter/Widgets/places_item.dart';
import 'package:whereapp_flutter/constants.dart';

class PlacesScreen extends StatelessWidget {
  final List<Map<String, dynamic>> placesData = [
    {
      "title": "المنزل",
      "icon": "assets/icons/home.svg",
    },
    {
      "title": "المدرسة",
      "icon": "assets/icons/school.svg",
    },
    {
      "title": "العمل",
      "icon": "assets/icons/work.svg",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        // Map
        Container(
            child: MapPage(),
            ),
        // Places List
        Row(
          textDirection: TextDirection.rtl,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Add Button
            Container(
              width: 75,
              height: 75,
              margin: const EdgeInsets.only(bottom: 40, right: 20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(0, 1),
                  )
                ],
              ),
              child: FlatButton(
                height: 75,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(37.5),
                ),
                // on Tap Add Button Function
                onPressed: () {
                  // Show Add Place Screen
                  showModalBottomSheet(
                    context: context,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    isScrollControlled: true,
                    builder: (context) => SingleChildScrollView(
                      child: AddPlace(
                        // on Press Function
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                  );
                },
                child: Center(
                  child: Icon(
                    Icons.add,
                    color: kPrimaryColor,
                    size: 30,
                  ),
                ),
              ),
            ),
            //List
            Expanded(
              child: Container(
                height: 75,
                margin: const EdgeInsets.only(bottom: 40),
                alignment: Alignment.centerLeft,
                child: ListView.builder(
                  reverse: true,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: placesData.length,
                  itemBuilder: (context, index) => PlacesItem(
                      icon: placesData[index]["icon"],
                      text: placesData[index]["title"],
                      onTap: () {}),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
