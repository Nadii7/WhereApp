import 'package:flutter/material.dart';
import 'package:whereapp_flutter/Screens/selectedUser/components/history_screen.dart';
import 'package:whereapp_flutter/Screens/selectedUser/components/overview_screen.dart';
import 'package:whereapp_flutter/Screens/selectedUser/components/places_screen.dart';
import 'package:whereapp_flutter/Widgets/default_appbar.dart';
import 'package:whereapp_flutter/Widgets/map_widget.dart';
import 'package:whereapp_flutter/constants.dart';

class SelectedUserList extends StatefulWidget {
  @override
  _SelectedUserListState createState() => _SelectedUserListState();
}

class _SelectedUserListState extends State<SelectedUserList>
    with SingleTickerProviderStateMixin {
  final List<String> titleList = [
    "الحالة التاريخية",
    "الأماكن",
    "نظرة عامة",
  ];
  TabController _controller;
  // ignore: unused_field
  int _selectedIndex = 0;
  String supTitle;

  @override
  void initState() {
    super.initState();
    // Create TabController for getting the index of current tab
    _controller = TabController(length: 3, vsync: this);
    _controller.index = 2;
    supTitle = titleList[_controller.index];

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
            Container(
              width: double.infinity,
              height: double.infinity,
              child: TabBarView(
                controller: _controller,
                children: [
                  Container(child: MapPage()),
                  PlacesScreen(),
                  OverviewScreen(),
                ],
              ),
            ),
            // App Bar
            new Container(
              height: 150,
              width: double.infinity,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  // App Bar
                  DefaultAppBar(
                    title: "عدي عاطف",
                    subtitle: supTitle,
                  ),
                  // Tab BAR
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Container(
                      width: 380,
                      height: 35,
                      decoration: new BoxDecoration(
                        gradient: kPrimaryGradientColor,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      // Custom Tab Widget
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        textDirection: TextDirection.rtl,
                        children: [
                          // First Tab
                          FlatButton(
                            height: 35,
                            minWidth: 127,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(25),
                              topRight: Radius.circular(25),
                            )),
                            color: _controller.index == 2 ? null : Colors.white,
                            child: Text(
                              titleList[2],
                              style: TextStyle(
                                color: _controller.index == 2
                                    ? Colors.white
                                    : kTextColor,
                                fontSize: 13.0,
                              ),
                            ),
                            onPressed: () {
                              if (_controller.index == 1 ||
                                  _controller.index == 0) {
                                setState(() {
                                  _controller.index = 2;
                                  supTitle = titleList[_controller.index];
                                });
                              }
                            },
                          ),
                          // Second Tab
                          FlatButton(
                            height: 35,
                            minWidth: 126,
                            color: _controller.index == 1 ? null : Colors.white,
                            child: Text(
                              titleList[1],
                              style: TextStyle(
                                color: _controller.index == 1
                                    ? Colors.white
                                    : kTextColor,
                                fontSize: 13.0,
                              ),
                            ),
                            onPressed: () {
                              if (_controller.index == 0 ||
                                  _controller.index == 2) {
                                setState(() {
                                  _controller.index = 1;
                                  supTitle = titleList[_controller.index];
                                });
                              }
                            },
                          ),
                          // Third Tab
                          FlatButton(
                            height: 35,
                            minWidth: 127,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(25),
                              topLeft: Radius.circular(25),
                            )),
                            color: _controller.index == 0 ? null : Colors.white,
                            child: Text(
                              titleList[0],
                              style: TextStyle(
                                color: _controller.index == 0
                                    ? Colors.white
                                    : kTextColor,
                                fontSize: 13.0,
                              ),
                            ),
                            onPressed: () {
                              if (_controller.index == 2 ||
                                  _controller.index == 1) {
                                setState(() {
                                  _controller.index = 0;
                                  supTitle = titleList[_controller.index];
                                });
                                // Show History Place Screen
                                showModalBottomSheet(
                                  context: context,
                                  isDismissible: false,
                                  barrierColor: Colors.transparent,
                                  isScrollControlled: false,
                                  builder: (context) => HistoryScreen(),
                                );
                              }
                            },
                          ),
                        ],
                      ),
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
