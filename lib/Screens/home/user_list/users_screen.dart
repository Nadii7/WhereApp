import 'package:flutter/material.dart';
import 'package:whereapp_flutter/Screens/home/user_list/components/family_friends_screen.dart';
import 'package:whereapp_flutter/Screens/home/user_list/components/map_list.dart';
import 'package:whereapp_flutter/Widgets/default_appbar.dart';
import 'package:whereapp_flutter/constants.dart';

class UserScreen extends StatefulWidget {
  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  // ignore: unused_field
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    // Create TabController for getting the index of current tab
    _controller = TabController(length: 2, vsync: this);
    _controller.index = 1;

    _controller.addListener(() {
      setState(() {
        _selectedIndex = _controller.index;
      });
      print("Selected Index: " + _controller.index.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      body: Container(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            // Tab Bar View
            TabBarView(
              controller: _controller,
              children: [
                Container(child: MapListPage()),
                Container(
                    margin: EdgeInsets.only(top: 180),
                    child: FamilyFriendsScreen())
              ],
            ),
            // App Bar
            Container(
              height: 160,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  DefaultAppBar(
                    title: "قائمة المستخدمين",
                    subtitle: "العائلة.الأصدقاء",
                  ),
                  // Tab BAR
                  Container(
                    width: 200,
                    height: 50,
                    decoration: new BoxDecoration(
                      gradient: kPrimaryGradientColor,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 4),
                        )
                      ],
                    ),
                    // Custom Tab Widget
                    child: Row(
                      children: [
                        // First Tab
                        FlatButton(
                          height: 50,
                          minWidth: 100,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(25),
                            topLeft: Radius.circular(25),
                          )),
                          color: _controller.index == 0 ? null : Colors.white,
                          child: Text(
                            "خريطة",
                            style: TextStyle(
                              color: _controller.index == 0
                                  ? Colors.white
                                  : kTextColor,
                              fontSize: 16.0,
                            ),
                          ),
                          onPressed: () {
                            if (_controller.index == 1) {
                              setState(() {
                                _controller.index = 0;
                              });
                            }
                          },
                        ),
                        // Second Tab
                        FlatButton(
                          height: 50,
                          minWidth: 100,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(25),
                            topRight: Radius.circular(25),
                          )),
                          color: _controller.index == 1 ? null : Colors.white,
                          child: Text(
                            "قائمة",
                            style: TextStyle(
                              color: _controller.index == 1
                                  ? Colors.white
                                  : kTextColor,
                              fontSize: 16.0,
                            ),
                          ),
                          onPressed: () {
                            if (_controller.index == 0) {
                              setState(() {
                                _controller.index = 1;
                              });
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}