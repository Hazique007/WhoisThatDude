import 'package:flutter/material.dart';

class PhotoSelect extends StatelessWidget {
  const PhotoSelect({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25,top: 25,right: 25),
      child: Container(
        width: 320,
        height: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.transparent,
          border: Border.all(color: Colors.white)

        ),

      ),
    );
  }
}
