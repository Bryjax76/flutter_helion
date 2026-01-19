import 'package:flutter/material.dart';
import 'package:flutter_podstawy_utilities/colors/my_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color containerColor = MyColors.melon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        debugPrint("onTap called!!");
        setState(() {
          containerColor = containerColor == MyColors.melon
              ? MyColors.ufoGreen
              : MyColors.melon;
        });
      },
      child: AnimatedContainer(duration: Duration(milliseconds: 700), color: containerColor),
    );
  }
}
