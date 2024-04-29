

import 'dart:io';


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whosthatdude/colors/color.dart';
import 'package:whosthatdude/components/my_btn2.dart';
import 'package:whosthatdude/components/photos_selec.dart';
import 'package:whosthatdude/components/submiit.dart';

class HomePage extends StatefulWidget {
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();









}

class _HomePageState extends State<HomePage> {

  bool issubmitted=false;

  void Submit(){

    if(_selectedImage==null){
       showDialog(context: context, builder: (context)=>AlertDialog(
         content: Container(
           decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
           child: InkWell(
               onTap: ()=>Navigator.pop(context),
               child: Text('Please Select an image',style: GoogleFonts.poppins(),)),
           
         ),

      ));

    }else{
      Navigator.pushNamed(context, ('/display'));

    }




  }




  Future<void>pickImagefromGallery () async{
    final returnedImage= await ImagePicker().pickImage(source: ImageSource.gallery);
    if(returnedImage==null) return;
    setState(() {
      _selectedImage =File(returnedImage!.path);
    });

  }

  Future<void>pickImagefromCamera () async{
    final returnedImage= await ImagePicker().pickImage(source: ImageSource.camera);
    if(returnedImage==null) return;
    setState(() {
      _selectedImage =File(returnedImage!.path);
    });

  }

  File? _selectedImage;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors().background,
      body: SafeArea(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25,top: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Who\'s',style: GoogleFonts.poppins(fontSize: 30,fontWeight: FontWeight.w700,color: Colors.white),),
                  Text('That Dude?',style: GoogleFonts.poppins(fontSize: 25,fontWeight: FontWeight.w500,color: Colors.white),)
                ],
              )
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25,top: 80,right: 25),
              child: Container(
                width: 320,
                height: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    // border: Border.all(color: Colors.white)

                ),
                child:_selectedImage != null ? Image.file(_selectedImage!,fit: BoxFit.scaleDown,):Center(child: Text('Please select an image')) ,

              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                UploadButton(
                  onTap: pickImagefromGallery,
                  icon: Icon(Icons.photo,color: Colors.white,size: 22,),
                  text: 'Upload from\ngallery',),

                UploadButton(
                  onTap: pickImagefromCamera,
                    icon: Icon(Icons.camera_alt_rounded,color: Colors.white,size: 22,),
                    text: 'Upload from\ncamera'),
              ],
            ),
            SizedBox(height: 25,),
            //submit btn

      Center(
        child: GestureDetector(
          onTap: ()=>Submit(),
          child: Container(
              width: 150,
              height: 50,
              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
              child:Center(

                  child:
                  issubmitted? CircularProgressIndicator():Text('Submit',style:  GoogleFonts.poppins(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w600),
                  )
              )
          ),
        ),

      )

          ],
        ),
      ),

    );
  }
}
