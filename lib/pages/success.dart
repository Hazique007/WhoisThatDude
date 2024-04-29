import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whosthatdude/colors/color.dart';
import 'package:whosthatdude/services/functions.dart';




class SuccessPage extends StatefulWidget {
  const SuccessPage({super.key});

  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  NextScreen nextScreen =NextScreen();

  @override
  void initState() {
    nextScreen.gotonextpage(context);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors().background3,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Success!",style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w700),),

            Image.asset('Asset/success.gif',height: 500,)
          ],
        ),
      ),
    );
  }
}
