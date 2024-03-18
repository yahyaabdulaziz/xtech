import 'package:flutter/material.dart';
import 'package:xtech/presentation/screens/change_password/change_password.dart';
import 'package:xtech/presentation/utils/app_theme.dart';

class SettingsScreen extends StatefulWidget {
  static const String routeName = "SettingsScreen";

  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Settings",
          style: AppTheme.appBarTextStyle,
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new_sharp),
          color: Colors.black,
        ),
        backgroundColor: Colors.grey.shade200,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const Row(
              children: [
                Icon(Icons.settings_outlined, color: Colors.deepPurpleAccent),
                SizedBox(width: 8),
                Text("Account", style: AppTheme.appBarTextStyle),
              ],
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 2), // changes position of shadow
                ),
              ], borderRadius: BorderRadius.circular(12), color: Colors.white),
              child: Column(
                children: [
                  Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                    child: const Row(
                      children: [
                        Text(
                          "Edit Profile",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios_sharp)
                      ],
                    ),
                  ),
                  Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                    child: Row(
                      children: [
                        const Text(
                          "Change Password",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        const Spacer(),
                        GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, ChangePassword.routeName);
                            },
                            child: Icon(Icons.arrow_forward_ios_sharp))
                      ],
                    ),
                  ),
                  Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                    child: const Row(
                      children: [
                        Text(
                          "Privacy",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios_sharp)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 18),
            const Row(
              children: [
                Icon(Icons.circle_notifications_outlined,
                    color: Colors.deepPurpleAccent),
                SizedBox(width: 8),
                Text("Notification", style: AppTheme.appBarTextStyle),
              ],
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 2), // changes position of shadow
                ),
              ], borderRadius: BorderRadius.circular(12), color: Colors.white),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        const Text(
                          "Notifications",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        const Spacer(),
                        Switch(
                          onChanged: (_) {
                            setState(() {
                              isSwitched = true;
                            });
                          },
                          value: isSwitched,
                          activeColor: Colors.deepPurple,
                          activeTrackColor: Colors.grey,
                          inactiveThumbColor: Colors.black,
                          inactiveTrackColor: Colors.grey,
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        const Text(
                          "Updates",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        const Spacer(),
                        Switch(
                          onChanged: (_) {
                            setState(() {
                              isSwitched = true;
                            });
                          },
                          value: isSwitched,
                          activeColor: Colors.deepPurple,
                          activeTrackColor: Colors.grey,
                          inactiveThumbColor: Colors.black,
                          inactiveTrackColor: Colors.grey,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 18),
            const Row(
              children: [
                Icon(Icons.settings_suggest_outlined,
                    color: Colors.deepPurpleAccent),
                SizedBox(width: 8),
                Text("Others", style: AppTheme.appBarTextStyle),
              ],
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 2), // changes position of shadow
                ),
              ], borderRadius: BorderRadius.circular(12), color: Colors.white),
              child: Column(
                children: [
                  Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                    child: Row(
                      children: [
                        const Text(
                          "Language",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        const Spacer(),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey.shade300,
                          ),
                          onPressed: () {},
                          child: const Text('English'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                    child: const Row(
                      children: [
                        Text(
                          "FAQ",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios_sharp)
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
