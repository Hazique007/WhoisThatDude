import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:whosthatdude/components/my_btn.dart';
import 'package:whosthatdude/intro_screens/intro_!.dart';
import 'package:whosthatdude/intro_screens/intro_3.dart';
import 'package:whosthatdude/intro_screens/intrro_2.dart';

import '../colors/color.dart';

class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _controller = PageController();

  //keep track if we are on the lasr page

  bool lastpage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: MyColors().background,
          elevation: 0,
          actions: [
            TextButton(
                onPressed: () {
                  _controller.jumpToPage(2);
                },
                child: lastpage
                    ? GestureDetector(
                  onTap: ()=>Navigator.pushReplacementNamed(context, '/home'),
                      child: Text(
                          'Done',
                          style: GoogleFonts.poppins(color: Colors.white),
                        ),
                    )
                    : Text(
                        'Skip',
                        style: GoogleFonts.poppins(color: Colors.white),
                      ))
          ],
        ),
        body: Stack(
          children: [
            PageView(
              onPageChanged: (index) {
                setState(() {
                  lastpage = (index == 2);
                });
              },
              controller: _controller,
              children: [IntroPage1(), IntroPage2(), IntroPage3()],
            ),
            Container(
                alignment: Alignment(-0.5, 0.85),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: SmoothPageIndicator(
                        controller: _controller,
                        count: 3,
                        effect: ExpandingDotsEffect(
                          dotHeight: 10,
                          dotWidth: 10,
                          expansionFactor: 2.5,
                          activeDotColor: MyColors().btn,
                          dotColor: Colors.white,
                        ),
                      ),
                    ),
                    lastpage
                        ? MyButton(
                            icon: Icon(
                              Icons.check,
                              color: Colors.white,
                            ),
                            onTap: () {
                              Navigator.pushReplacementNamed(context, '/home');
                            })
                        : MyButton(
                            icon: Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.white,
                            ),
                            onTap: () {
                              _controller.nextPage(
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.linear);
                            },
                          )
                  ],
                ))
          ],
        ));
  }
}
