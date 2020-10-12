import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whereapp_flutter/Screens/selectedUser/selected_user.dart';
import 'package:whereapp_flutter/Widgets/map_widget.dart';

import '../../../../constants.dart';

class MapListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          child: MapPage(),
        ),
        Container(
          padding: const EdgeInsets.only(bottom: 35, top: 20),
          color: Colors.white,
          child: ListTile(
            // Name
            title: Text(
              "عدي عاطف",
              textDirection: TextDirection.rtl,
              style: TextStyle(color: kPrimaryColor, fontSize: 14),
            ),
            // City
            subtitle: Text(
              "القاهرة",
              textDirection: TextDirection.rtl,
              style: TextStyle(
                color: kTextColor.withOpacity(0.3),
                fontSize: 12,
              ),
            ),
            // Icons
            leading: Container(
              height: double.infinity,
              width: 50,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    "assets/icons/a_notificatin.svg",
                    height: 15,
                    width: 15,
                  ),
                  SizedBox(width: 15),
                  SvgPicture.asset(
                    "assets/icons/locate.svg",
                    height: 10,
                    width: 15,
                  ),
                ],
              ),
            ),
            // Avatar and Online Dot
            trailing: Container(
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  // Avatar here
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40.0),
                    child: Image.asset(
                      "assets/images/avatar.jpeg",
                      fit: BoxFit.cover,
                      width: 50,
                      height: 50,
                    ),
                  ),
                  // Online Dot Here
                  Container(
                    alignment: Alignment.center,
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.circle,
                      size: 10,
                      color: Color(0xffA0C62D),
                    ),
                  )
                ],
              ),
            ),
            // on Tap Function
            onTap: () {
              // Set on Tab Functions
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SelectedUserScreen(),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
