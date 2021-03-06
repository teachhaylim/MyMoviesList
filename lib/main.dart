import 'package:flutter/material.dart';
import 'package:mymovieslist/pages/Layout.dart';
import 'package:mymovieslist/utils/appConfig.dart';

//BUG Loading Content casue slow performance

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, accentColor: accentColor, primaryColorLight: primaryLight, primaryColorDark: primaryDark),
      home: Layout(),
    );
  }
}
