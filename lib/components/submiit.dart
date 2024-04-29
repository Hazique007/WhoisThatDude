import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class SubmitButton extends StatefulWidget {
  String text;


  SubmitButton({required this.text,super.key});




  @override
  State<SubmitButton> createState() => _SubmitButtonState();


}

class _SubmitButtonState extends State<SubmitButton> {
  bool issubmitted=false;

  void Submit(){


    Navigator.pushNamed(context, ('/display'));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: ()=>Submit(),
        child: Container(
          width: 150,
          height: 50,
          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
          child:Center(

              child:
              issubmitted? CircularProgressIndicator():Text(widget.text,style:  GoogleFonts.poppins(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w600),
              )
          )
        ),
      ),

    );
  }
}
