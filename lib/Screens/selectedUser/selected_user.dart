import 'package:flutter/material.dart';
import 'package:whereapp_flutter/Screens/home/settings.dart';
import 'package:whereapp_flutter/Screens/selectedUser/components/selected_user_list.dart';
import 'package:whereapp_flutter/Widgets/default_action_button.dart';
import 'package:whereapp_flutter/Widgets/default_bottombar.dart';
import 'package:whereapp_flutter/Widgets/floating_button.dart';

class SelectedUserScreen extends StatefulWidget {
  @override
  _SelectedUserScreenState createState() => _SelectedUserScreenState();
}

class _SelectedUserScreenState extends State<SelectedUserScreen> {
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
                new SelectedUserList(),
                // The Transpert Screen
                IgnorePointer(
                  child: Container(
                    // comment or change to transparent color
                    color: isClicked
                        ? Colors.white.withOpacity(0.9)
                        : Colors.white.withOpacity(0.0),
                    height: double.infinity,
                    width: double.infinity,
                  ),
                ),
                // Floating Buttons
                new FloatingButtons(
                  isClicked: isClicked,
                )
              ],
            )
          : SettingsScreen(),
    );
  }
}
