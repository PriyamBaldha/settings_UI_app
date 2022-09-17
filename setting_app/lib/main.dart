import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'global.dart';

void main() {
  runApp(
    SettingPage(),
  );
}

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  TextStyle myStyle = const TextStyle(color: Colors.red, fontSize: 20);

  TextStyle IOSStyle1 = const TextStyle(color: Colors.black, fontSize: 20);

  TextStyle IOSStyle2 = const TextStyle(color: Colors.grey, fontSize: 20);

  bool LockappSwitchval = true;
  bool FingerPrintSwitchval = false;
  bool PasswordSwitchval = true;

  @override
  Widget build(BuildContext context) {
    return (Global.isIOS == false)
        ? MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              appBar: AppBar(
                title: const Text(
                  "Setting UI",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                actions: [
                  Switch(
                      value: Global.isIOS,
                      onChanged: (val) {
                        setState(() {
                          Global.isIOS = val;
                        });
                      })
                ],
                backgroundColor: Colors.red,
              ),
              body: SingleChildScrollView(
                child: Container(
                  //alignment: Alignment.center,
                  padding: EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Common",
                        style: myStyle,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      const ListTile(
                        leading: Icon(Icons.language),
                        title: Text("Language"),
                        subtitle: Text("English"),
                      ),
                      Divider(),
                      const ListTile(
                        leading: Icon(Icons.cloud),
                        title: Text("Environment"),
                        subtitle: Text("Production"),
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Text(
                        "Account",
                        style: myStyle,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      const ListTile(
                        leading: Icon(Icons.call),
                        title: Text("Phone number"),
                      ),
                      Divider(),
                      const ListTile(
                        leading: Icon(Icons.email),
                        title: Text("Email"),
                      ),
                      Divider(),
                      const ListTile(
                        leading: Icon(Icons.exit_to_app),
                        title: Text("Sign Out"),
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Text(
                        "Security",
                        style: myStyle,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        leading: Icon(Icons.phonelink_lock_outlined),
                        title: Text("Lock app in background"),
                        trailing: Switch(
                          value: LockappSwitchval,
                          activeColor: Colors.red,
                          onChanged: (val) {
                            setState(() {
                              LockappSwitchval = val;
                            });
                          },
                        ),
                      ),
                      Divider(),
                      ListTile(
                        leading: Icon(Icons.fingerprint),
                        title: Text("Use Fingerprint"),
                        trailing: Switch(
                          value: FingerPrintSwitchval,
                          activeColor: Colors.red,
                          onChanged: (val) {
                            setState(() {
                              FingerPrintSwitchval = val;
                            });
                          },
                        ),
                      ),
                      Divider(),
                      ListTile(
                        leading: Icon(Icons.lock),
                        title: Text("Change Password"),
                        trailing: Switch(
                          value: PasswordSwitchval,
                          activeColor: Colors.red,
                          onChanged: (val) {
                            setState(() {
                              PasswordSwitchval = val;
                            });
                          },
                        ),
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Text(
                        "Misc",
                        style: myStyle,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      const ListTile(
                        leading: Icon(Icons.file_open_outlined),
                        title: Text("Terma of Service"),
                      ),
                      Divider(),
                      const ListTile(
                        leading: Icon(Icons.file_copy_outlined),
                        title: Text("Open source licenses"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        : CupertinoApp(
            debugShowCheckedModeBanner: false,
            home: CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                backgroundColor: CupertinoColors.destructiveRed,
                trailing: CupertinoSwitch(
                  value: Global.isIOS,
                  activeColor: Colors.black,
                  onChanged: (val) {
                    setState(() {
                      Global.isIOS = val;
                    });
                  },
                ),
                middle: const Text(
                  "Settings UI",
                  style: TextStyle(
                    color: CupertinoColors.white,
                    //    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              child: SingleChildScrollView(
                child: Container(
                  //alignment: Alignment.center,
                  padding: EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Common",
                        style: IOSStyle2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        color: CupertinoColors.extraLightBackgroundGray,
                        padding: const EdgeInsets.only(
                            left: 10, top: 10, bottom: 10),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.language,
                              color: CupertinoColors.systemGrey2,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Language",
                              style: IOSStyle1,
                            ),
                            const Spacer(),
                            Text(
                              "English",
                              style: IOSStyle2,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            const Icon(
                              CupertinoIcons.forward,
                              color: CupertinoColors.systemGrey2,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Container(
                        color: CupertinoColors.extraLightBackgroundGray,
                        padding: const EdgeInsets.only(
                            left: 10, top: 10, bottom: 10),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.cloud,
                              color: CupertinoColors.systemGrey2,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Environment",
                              style: IOSStyle1,
                            ),
                            const Spacer(),
                            Text(
                              "Production",
                              style: IOSStyle2,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            const Icon(
                              CupertinoIcons.forward,
                              color: CupertinoColors.systemGrey2,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text(
                          "Account",
                          style: IOSStyle2,
                        ),
                      ),
                      Container(
                        color: CupertinoColors.extraLightBackgroundGray,
                        padding: const EdgeInsets.only(
                            left: 10, top: 10, bottom: 10),
                        child: Row(
                          children: [
                            const Icon(
                              CupertinoIcons.phone_fill,
                              color: CupertinoColors.systemGrey2,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Phone number",
                              style: IOSStyle1,
                            ),
                            const SizedBox(
                              width: 255,
                            ),
                            const Icon(
                              CupertinoIcons.forward,
                              color: CupertinoColors.systemGrey2,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: CupertinoColors.extraLightBackgroundGray,
                        padding: const EdgeInsets.all(12),
                        margin: const EdgeInsets.only(top: 1),
                        child: Row(
                          children: [
                            const Icon(
                              CupertinoIcons.mail,
                              color: CupertinoColors.systemGrey2,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Email",
                              style: IOSStyle1,
                            ),
                            const Spacer(),
                            const Icon(
                              CupertinoIcons.forward,
                              color: CupertinoColors.systemGrey2,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: CupertinoColors.extraLightBackgroundGray,
                        margin: const EdgeInsets.only(top: 1),
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.logout,
                              color: CupertinoColors.systemGrey2,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Sign out",
                              style: IOSStyle1,
                            ),
                            const Spacer(),
                            const Icon(
                              CupertinoIcons.forward,
                              color: CupertinoColors.systemGrey2,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 10, top: 15, bottom: 5),
                        child: Text(
                          "Security",
                          style: IOSStyle2,
                        ),
                      ),
                      Container(
                        color: CupertinoColors.extraLightBackgroundGray,
                        margin: const EdgeInsets.only(top: 1),
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.phonelink_lock_outlined,
                              color: CupertinoColors.systemGrey2,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Lock app in background",
                              style: IOSStyle1,
                            ),
                            const Spacer(),
                            CupertinoSwitch(
                                value: LockappSwitchval,
                                activeColor: Colors.red,
                                onChanged: (val) {
                                  setState(() {
                                    LockappSwitchval = val;
                                  });
                                }),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: CupertinoColors.extraLightBackgroundGray,
                        margin: const EdgeInsets.only(top: 1),
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.fingerprint,
                              color: CupertinoColors.systemGrey2,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Use fingerprint",
                              style: IOSStyle1,
                            ),
                            const SizedBox(
                              width: 215,
                            ),
                            CupertinoSwitch(
                                value: FingerPrintSwitchval,
                                activeColor: Colors.red,
                                onChanged: (val) {
                                  setState(() {
                                    FingerPrintSwitchval = val;
                                  });
                                }),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: CupertinoColors.extraLightBackgroundGray,
                        margin: const EdgeInsets.only(top: 1),
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.lock,
                              color: CupertinoColors.systemGrey2,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Change password",
                              style: IOSStyle1,
                            ),
                            const Spacer(),
                            CupertinoSwitch(
                                value: PasswordSwitchval,
                                activeColor: Colors.red,
                                onChanged: (val) {
                                  setState(() {
                                    PasswordSwitchval = val;
                                  });
                                }),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text(
                          "Misc",
                          style: IOSStyle2,
                        ),
                      ),
                      Container(
                        color: CupertinoColors.extraLightBackgroundGray,
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          children: [
                            const Icon(
                              CupertinoIcons.doc_text,
                              color: CupertinoColors.systemGrey2,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Terms of Service",
                              style: IOSStyle1,
                            ),
                            const SizedBox(
                              width: 236,
                            ),
                            const Icon(
                              CupertinoIcons.forward,
                              color: CupertinoColors.systemGrey2,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: CupertinoColors.extraLightBackgroundGray,
                        padding: const EdgeInsets.only(
                            left: 10, top: 10, bottom: 10),
                        margin: const EdgeInsets.only(top: 1),
                        child: Row(
                          children: [
                            const Icon(
                              CupertinoIcons.book,
                              color: CupertinoColors.systemGrey2,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Open source licenses",
                              style: IOSStyle1,
                            ),
                            const SizedBox(width: 136),
                            const Icon(
                              CupertinoIcons.forward,
                              color: CupertinoColors.systemGrey2,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
  }
}
