import 'package:flutter/material.dart';
import 'package:flutter_podstawy_utilities/colors/my_colors.dart';

class MyAnimatedContainer extends StatefulWidget {
  @override
  State<MyAnimatedContainer> createState() => _MyAppState();
}

class _MyAppState extends State<MyAnimatedContainer> {
  Color containerColor = MyColors.melon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        debugPrint("onTap called!!");
        setState(() {
          if (containerColor == MyColors.melon) {
            containerColor = MyColors.ufoGreen;
          } else {
            containerColor = MyColors.melon;
          }
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 700),
        color: containerColor,
      ),
    );
  }
}