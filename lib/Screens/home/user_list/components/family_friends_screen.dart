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
      'isSelected2': false,
    },
    {
      'title': 'عدي عاطف',
      'city': 'القاهرة',
      'image': "assets/images/avatar.jpeg",
      'isSelected': true,
      'isSelected2': false,
    },
    {
      'title': 'عدي عاطف',
      'city': 'القاهرة',
      'image': "assets/images/avatar.jpeg",
      'isSelected': false,
      'isSelected2': false,
    },
    {
      'title': 'عدي عاطف',
      'city': 'القاهرة',
      'image': "assets/images/avatar.jpeg",
      'isSelected': false,
      'isSelected2': false,
    },
    {
      'title': 'عدي عاطف',
      'city': 'القاهرة',
      'image': "assets/images/avatar.jpeg",
      'isSelected': true,
      'isSelected2': false,
    },
    {
      'title': 'عدي عاطف',
      'city': 'القاهرة',
      'image': "assets/images/avatar.jpeg",
      'isSelected': false,
      'isSelected2': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        color: kBgColor,
        child: Column(
          textDirection: TextDirection.rtl,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // List Of Family Mempers
            Expanded(
              flex: 3,
              child: UsersList(
                title: "العائلة",
                dataList: staticList,
              ),
            ),
            // List Of Friends Mempers
            Expanded(
              flex: 3,
              child: UsersList(
                title: "الأصدقاء",
                dataList: staticList,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
