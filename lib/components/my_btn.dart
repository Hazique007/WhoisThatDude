import 'package:flutter/material.dart';
import 'package:whosthatdude/colors/color.dart';

class MyButton extends StatelessWidget {
  final void Function()? onTap;
  Icon icon;
  MyButton({required this.icon,required this.onTap,super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 65,
        height: 45,
        decoration: BoxDecoration(
          color: MyColors().btn,
            shape: BoxShape.circle
        ),
        child:icon,
      ),
    );
  }
}
