import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whosthatdude/colors/color.dart';


class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors().background,
      body: Padding(
        padding: const EdgeInsets.only(bottom: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //image
            Padding(
              padding: const EdgeInsets.only(left: 30,bottom: 60),
              child: Image

                (image: AssetImage('Asset/2nd.png',),width: 300,

              ),
            ),

            //heading
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [


                  Text('Upload',style: GoogleFonts.poppins(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w600),),


                  //subheading
                  Text('Upload the face that you want\nto search',style: GoogleFonts.poppins(fontSize: 12,color: Colors.white),)
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
