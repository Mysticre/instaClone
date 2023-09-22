import 'package:flutter/material.dart';
import 'package:insta_clone/utilities/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget webScreen;
  final Widget mobileScreen;

  ResponsiveLayout(
      {Key? key, required this.webScreen, required this.mobileScreen})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraits) {
      if (constraits.maxWidth > webScreenSize) {
        return webScreen;
      }

      return mobileScreen;
    });
  }
}
