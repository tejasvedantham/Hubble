import 'package:flutter/material.dart';
import 'package:hubble_app/ui/login.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingsWidget extends StatefulWidget {
  @override
  _SettingsWidgetState createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  bool instagramActive = true;
  bool snapchatActive = true;
  bool facebookActive = true;
  bool twitterActive = true;
  bool linkedinActive = true;

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Scaffold(
          appBar: AppBar(title: Text("Settings"), elevation: 20,),
          body: SettingsList(
            sections: [
              SettingsSection(
                title: 'Account',
                tiles: [
                  SettingsTile(
                    title: 'Email',
                    subtitle: "sample@gmail.com",
                    leading: Icon(Icons.email_rounded, color: Colors.blue,),
                    onTap: () {},
                  ),
                  SettingsTile(
                    title: 'Sign Out',
                    leading: Icon(Icons.exit_to_app, color: Colors.blue),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginWidget()));
                    },
                  ),
                ],
              ),
              SettingsSection(
                title: 'Social Media',
                tiles: [
                  SettingsTile.switchTile(
                    title: 'Instagram',
                    leading: Icon(Icons.person_add_outlined, color: Colors.greenAccent[400],),
                    onToggle: (bool value) {
                      setState(() {
                        instagramActive = value;
                      });
                    },
                    switchValue: instagramActive,
                  ),
                  SettingsTile.switchTile(
                    title: 'Facebook',
                    leading: Icon(Icons.person_add_outlined, color: Colors.greenAccent[400],),
                    onToggle: (bool value) {
                      setState(() {
                        facebookActive = value;
                      });
                    },
                    switchValue: facebookActive,
                  ),
                  SettingsTile.switchTile(
                    title: 'Snapchat',
                    leading: Icon(Icons.person_add_outlined, color: Colors.greenAccent[400],),
                    onToggle: (bool value) {
                      setState(() {
                        snapchatActive = value;
                      });
                    },
                    switchValue: snapchatActive,
                  ),
                  SettingsTile.switchTile(
                    title: 'Twitter',
                    leading: Icon(Icons.person_add_outlined, color: Colors.greenAccent[400],),
                    onToggle: (bool value) {
                      setState(() {
                        twitterActive = value;
                      });
                    },
                    switchValue: twitterActive,
                  ),
                  SettingsTile.switchTile(
                    title: 'LinkedIn',
                    leading: Icon(Icons.person_add_outlined, color: Colors.greenAccent[400],),
                    onToggle: (bool value) {
                      setState(() {
                        linkedinActive = value;
                      });
                    },
                    switchValue: linkedinActive,
                  ),
                ],
              )
            ],
          ),
        )
    );
  }
}
