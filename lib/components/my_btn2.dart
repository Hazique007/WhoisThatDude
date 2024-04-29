import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UploadButton extends StatelessWidget {
  String text;
  Icon icon;
  void Function()? onTap;
  UploadButton({required this.onTap,required this.icon,required this.text,super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25,right: 25,top: 25),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 120,
          height: 50,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.transparent,border: Border.all(color: Colors.white)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              icon,

              Text(text,style: GoogleFonts.poppins(fontSize: 10,color: Colors.white),),
            ],
          ),
        ),
      ),
    );
  }
}
