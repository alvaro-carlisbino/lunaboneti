import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:luna/colors.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  bool isHoverFirstButton = false;
  bool isHoverTwoButton = false;
  bool isHoverThreeButton = false;
  bool isHoverFourButton = false;
  bool isHoverFiveButton = false;


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              color: AppColors.firstColumnColor,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 200),
                    child: Text(
                      "Luna Machado",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.03,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      "Creator, publicitária e empreendedora",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.015,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  MouseRegion(
                    onEnter: (event) {
                      setState(() {
                        isHoverFirstButton = true;
                      });
                    },
                    onExit: (event) {
                      setState(() {
                        isHoverFirstButton = false;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 25, left: 20, right: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color:
                            isHoverFirstButton == false
                                ? AppColors.firstColumnButtons
                                : AppColors.firstColumnButtonsHover,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white, width: 1),
                      ),
                      width: double.infinity,
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "Cursos e mt top legal de mais",
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * 0.02,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  MouseRegion(
                    onEnter: (event) {
                      setState(() {
                        isHoverTwoButton = true;
                      });
                    },
                    onExit: (event) {
                      setState(() {
                        isHoverTwoButton = false;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 25, left: 20, right: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color:
                            isHoverTwoButton == false
                                ? AppColors.firstColumnButtons
                                : AppColors.firstColumnButtonsHover,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white, width: 1),
                      ),
                      width: double.infinity,
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "Cursos e mt top legal de mais",
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * 0.02,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  MouseRegion(
                    onEnter: (event) {
                      setState(() {
                        isHoverThreeButton = true;
                      });
                    },
                    onExit: (event) {
                      setState(() {
                        isHoverThreeButton = false;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 25, left: 20, right: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color:
                            isHoverThreeButton == false
                                ? AppColors.firstColumnButtons
                                : AppColors.firstColumnButtonsHover,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white, width: 1),
                      ),
                      width: double.infinity,
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "Cursos e mt top legal de mais",
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * 0.02,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  MouseRegion(
                    onEnter: (event) {
                      setState(() {
                        isHoverFourButton = true;
                      });
                    },
                    onExit: (event) {
                      setState(() {
                        isHoverFourButton = false;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 25, left: 20, right: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color:
                            isHoverFourButton == false
                                ? AppColors.firstColumnButtons
                                : AppColors.firstColumnButtonsHover,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white, width: 1),
                      ),
                      width: double.infinity,
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "Cursos e mt top legal de mais",
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * 0.02,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  MouseRegion(
                    onEnter: (event) {
                      setState(() {
                        isHoverFiveButton = true;
                      });
                    },
                    onExit: (event) {
                      setState(() {
                        isHoverFiveButton = false;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 25, left: 20, right: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color:
                            isHoverFiveButton == false
                                ? AppColors.firstColumnButtons
                                : AppColors.firstColumnButtonsHover,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white, width: 1),
                      ),
                      width: double.infinity,
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "Cursos e mt top legal de mais",
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * 0.02,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
