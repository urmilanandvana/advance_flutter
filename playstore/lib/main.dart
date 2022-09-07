import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playstore/android_app/install.dart';
import 'package:playstore/both_page/homepage.dart';

void main() {
  runApp(
    (Platform.isAndroid)
        ? MaterialApp(
            debugShowCheckedModeBanner: false,
            // theme: ThemeData(
            //     colorScheme: ColorScheme.fromSwatch().copyWith(
            //   primary: Colors.white,
            // )),
            routes: {
              '/': (context) => const HomePage(),
              'install_page': (context) => InstallPage(),
            },
          )
        : CupertinoApp(
            home: HomePage(),
          ),
  );
}
