import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:setting_ui/ios_ui/setting_ios_page.dart';

import '../android_ui/setting_ui_page.dart';
import '../globl_page/global.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return (Global.isIOS == false)
        ? Scaffold(
            appBar: AppBar(
              title: const Text("Setting UI"),
              actions: [
                Switch(
                    activeColor: Colors.red,
                    value: Global.isIOS,
                    onChanged: (val) {
                      setState(() {
                        Global.isIOS = val;
                      });
                    }),
              ],
            ),
            body: const SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: SettingPage(),
            ),
          )
        : CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
              backgroundColor: CupertinoColors.destructiveRed,
              middle: Text(
                "Setting UI",
                style: TextStyle(
                  color: CupertinoColors.white,
                ),
              ),
              trailing: CupertinoSwitch(
                thumbColor: CupertinoColors.destructiveRed,
                activeColor: CupertinoColors.white,
                value: Global.isIOS,
                onChanged: (val) {
                  setState(
                    () {
                      Global.isIOS = val;
                    },
                  );
                },
              ),
            ),
            child: CupertinoApp(
              debugShowCheckedModeBanner: false,
              home: SettingIosPage(),
            ),
          );
  }
}
