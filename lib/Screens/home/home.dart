import 'package:flutter/material.dart';
import 'package:whereapp_flutter/Screens/home/settings.dart';
import 'package:whereapp_flutter/Screens/home/user_list/users_screen.dart';
import 'package:whereapp_flutter/Widgets/default_action_button.dart';
import 'package:whereapp_flutter/Widgets/default_bottombar.dart';
import 'package:whereapp_flutter/Widgets/floating_button.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isClicked = false;
  int currentPage = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Bottom Navigation Bar
      bottomNavigationBar: DefaultBottomBar(
        currentPage: currentPage,
        onTap: (newIndex) => setState(() => currentPage = newIndex),
      ),
      // Floating Action Botton
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: DefaultActionButton(
        isClicked: isClicked,
        // Functions To Do When Click Floating Action Button
        onPressed: () {
          setState(() {
            isClicked = !isClicked;
          });
        },
      ),
      // Body
      body: currentPage == 1
          ? Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                // Bottom Navigation Page
                new UserScreen(),
                // The Transpert Screen
                IgnorePointer(
                  child: Container(
                    // comment or change to transparent color
                    color: isClicked
                        ? Colors.white
                        : Colors.white.withOpacity(0.0),
                    height: double.infinity,
                    width: double.infinity,
                  ),
                ),
                // Floating Buttons
                new FloatingButtons(isClicked: isClicked)
              ],
            )
          : SettingsScreen(),
    );
  }
}
