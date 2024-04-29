import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whosthatdude/colors/color.dart';
import 'package:whosthatdude/services/functions.dart';

class ImageDisplay extends StatefulWidget {
  const ImageDisplay({super.key});

  @override
  State<ImageDisplay> createState() => _ImageDisplayState();
}

class _ImageDisplayState extends State<ImageDisplay> {
  @override
  NextScreen nextScreen = NextScreen();

  void initState() {
    super.initState();
    nextScreen.gotonextpage(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: MyColors().background2,
      //   elevation: 0,
      //   centerTitle: true,
      //   title: Text(
      //     'Scanning...',
      //     style: GoogleFonts.poppins(color: Colors.black),
      //   ),
      // ),
      backgroundColor: MyColors().background2,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Scanning...',style: GoogleFonts.poppins(color: Colors.black,fontSize: 25),),
          Center(
              child: Image.asset(
                'Asset/ff.gif',
                width: 500,
                height: 500,
              ))
        ],
      ),
    );
  }
}
