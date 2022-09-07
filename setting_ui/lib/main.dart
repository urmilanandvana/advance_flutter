import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:setting_ui/android_ui/setting_ui_page.dart';
import 'package:setting_ui/both_ui/homepage.dart';
import 'package:setting_ui/ios_ui/setting_ios_page.dart';

void main() {
  runApp(
    (Platform.isAndroid)
        ? MaterialApp(
            debugShowCheckedModeBanner: false,
            home: const HomePage(),
            theme: ThemeData(
                colorScheme:
                    ColorScheme.fromSwatch().copyWith(primary: Colors.red)),
          )
        : const CupertinoApp(
            debugShowCheckedModeBanner: false,
            showSemanticsDebugger: false,
            home: HomePage(),
          ),
  );
}
