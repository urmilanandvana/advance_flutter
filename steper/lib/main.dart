import 'package:flutter/material.dart';
import 'package:steper/homepage.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.red,
          onSurface: Colors.red,
        ),
      ),
    ),
  );
}
