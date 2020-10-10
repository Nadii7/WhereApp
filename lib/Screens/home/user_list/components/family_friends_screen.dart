import 'package:flutter/material.dart';
import 'package:whereapp_flutter/Screens/home/user_list/components/users_list.dart';
import 'package:whereapp_flutter/constants.dart';

class FamilyFriendsScreen extends StatefulWidget {
  @override
  _FamilyFriendsScreenState createState() => _FamilyFriendsScreenState();
}

class _FamilyFriendsScreenState extends State<FamilyFriendsScreen> {
  final List<Map<String, dynamic>> staticList = [
    {
      'title': 'عدي عاطف',
      'city': 'القاهرة',
      'image': "assets/images/avatar.jpeg",
      'isSelected': false,
    },
    {
      'title': 'عدي عاطف',
      'city': 'القاهرة',
      'image': "assets/images/avatar.jpeg",
      'isSelected': true,
    },
    {
      'title': 'عدي عاطف',
      'city': 'القاهرة',
      'image': "assets/images/avatar.jpeg",
      'isSelected': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: kBgColor,
      child: Column(
        textDirection: TextDirection.rtl,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          UsersList(
            title: "العائلة",
            dataList: staticList,
          ),
          UsersList(
            title: "الأصدقاء",
            dataList: staticList,
          ),
        ],
      ),
    );
  }
}
