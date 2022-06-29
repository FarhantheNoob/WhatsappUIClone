import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/mobileScreenLayout.dart';
import 'package:whatsapp_clone/Screens/webScreenLayout.dart';
import 'package:whatsapp_clone/responsiveLayout.dart';
import 'colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      title: 'Whatsapp UI',
      home: ResponsiveLayout(
          mobileScreenLayout: MobileScreenLayout(),
          webScreenLayout: WebScreenLayout()),
    );
  }
}
