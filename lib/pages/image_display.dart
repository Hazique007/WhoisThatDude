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
  String _headingText = "Scanning...";
  String _subheading ="Hold back for a while ";
  String _imageUrl = "Asset/ff.gif";
  Color  _color = MyColors().background2;









  @override


  void initState() {
    super.initState();
    //After 6 seconds change the image and heading
    Future.delayed(Duration(seconds: 6),(){
      setState(() {
        _headingText="Searching the Web...";
        _imageUrl="Asset/search.gif";
        _subheading="Getting the best results";
        _color=MyColors().background3;
        Future.delayed(Duration(seconds: 5),(){
          Navigator.pushReplacementNamed(context, '/success');
        });
      });


    });
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
      backgroundColor: _color,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(_headingText,style: GoogleFonts.poppins(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w700),),
              Text(_subheading,style: GoogleFonts.poppins(color: MyColors().background4,fontSize: 15 ),),

            ],
          ),

          Center(
              child: Image.asset(
            _imageUrl,
            width: 500,
            height: 500,
          ))
        ],
      ),
    );
  }
}
