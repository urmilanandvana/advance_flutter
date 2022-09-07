import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ios_app/homepage.dart';

void main() {
  runApp(
    CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}
