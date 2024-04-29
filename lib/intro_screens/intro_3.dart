import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whosthatdude/colors/color.dart';


class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors().background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //skip button

          //image
          Padding(
            padding: const EdgeInsets.only(left: 85,bottom: 60),
            child: Image

              (image: AssetImage('Asset/ro.png',),width: 200,

            ),
          ),

          //heading
          Padding(
            padding: const EdgeInsets.only(left: 35),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [


                Text('Exploring\nSimilar Faces',style: GoogleFonts.poppins(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w600),),


                //subheading
                Text('Get lightening fast and the most\naccurate results.',style: GoogleFonts.poppins(fontSize: 12,color: Colors.white),)
              ],
            ),
          )

        ],
      ),
    );
  }
}
