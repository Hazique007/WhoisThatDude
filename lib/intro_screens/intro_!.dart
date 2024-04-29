import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whosthatdude/colors/color.dart';


class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: MyColors().background,
      body: Padding(
        padding: const EdgeInsets.only(bottom: 80),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            //image
            Padding(
              padding: const EdgeInsets.only(left: 70,bottom: 60),
              child: Image

                (image: AssetImage('Asset/1st.png',),width: 300,

              ),
            ),

            //heading
           Padding(
             padding: const EdgeInsets.only(right: 15),
             child: Column(

               crossAxisAlignment: CrossAxisAlignment.start,
               children: [


                   Text('Welcome ',style: GoogleFonts.poppins(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w600),),


                 //subheading
                 Text('Welcome to Who’s That Dude to find\nany dude’s face from all over\nthe internet',style: GoogleFonts.poppins(fontSize: 12,color: Colors.white),)
               ],
             ),
           )

          ],
        ),
      ),
    );
  }
}
