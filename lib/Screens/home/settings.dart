import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:whereapp_flutter/constants.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return SettingsList(
      sections: [
        SettingsSection(
          title: 'Settings',
          tiles: [
            SettingsTile(
              title: 'Language',
              subtitle: 'English',
              leading: Icon(Icons.language),
              onTap: () {},
            ),
            SettingsTile.switchTile(
              title: 'Use fingerprint',
              leading: Icon(Icons.fingerprint),
              switchValue: true,
              switchActiveColor: kPrimaryColor,
              onToggle: (bool newvalue) {},
            ),
          ],
        ),
      ],
    );
  }
}
