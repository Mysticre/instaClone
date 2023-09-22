import 'package:flutter/material.dart';
import 'package:insta_clone/responive/mobile_screen_layout.dart';
import 'package:insta_clone/responive/responsive_layout_screen.dart';
import 'package:insta_clone/responive/webScreen.dart';
import 'package:insta_clone/utilities/colors_settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone Project',
      theme: ThemeData.dark(useMaterial3: true).copyWith(
        scaffoldBackgroundColor: colorTheme['mobileBackgroundColor'],
      ),
      home: ResponsiveLayout(
          webScreen: WebScreenLayout(), mobileScreen: MobileScreenLayout()),
    );
  }
}
