import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whosthatdude/colors/color.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  // List<Map<String, dynamic>> _dummyData = [];
  // List<String> _imageUrls = [
  //   "https://i.pinimg.com/736x/15/ca/0c/15ca0c352322cb9101e20e423ec34554.jpg",
  //   "https://w0.peakpx.com/wallpaper/518/289/HD-wallpaper-shahrukh-khan-srk-smile-srk-smile-thumbnail.jpg",
  //   "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Shah_Rukh_Khan_graces_the_launch_of_the_new_Santro.jpg/220px-Shah_Rukh_Khan_graces_the_launch_of_the_new_Santro.jpg",
  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTipdHwnwk9HIapp3q2K4H4sc2_F7LzOIZD4GgChOH71g&s",
  // ];

  List<String> _imageUrls = [];

  int _currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //load images from JSON file
    loadDummyData();
    //Strat the timer to display image after every 2 second
    Timer.periodic(Duration(seconds: 2), (Timer timer) {
      setState(() {
        _currentIndex = (_currentIndex + 1) % _imageUrls.length;
      });
    });
  }

  Future<void> loadDummyData() async {
    final String jsonString = await rootBundle.loadString('Asset/dummy_data.json');
    final List<dynamic> jsonList = json.decode(jsonString);
    setState(() {
      _imageUrls = List<String>.from(jsonList);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Results',style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w700),

      ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: MyColors().background3,

      ),
      body: Padding(
        padding: const EdgeInsets.all( 25),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 25,childAspectRatio: 0.5),
            itemCount:_imageUrls.length ,

            itemBuilder: (BuildContext , int index){
              return Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                height: 200,
                width: 200,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(_imageUrls[index],fit: BoxFit.cover,)),
                ),
              );
            }),
      )
    );
  }
}
