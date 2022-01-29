 
import 'dart:async';
import 'package:elearn/ExtraPages/HISTORY.dart';
import 'package:elearn/ExtraPages/QUIZ_RESULT.dart';
import 'package:elearn/TempPages/Certification.dart';
import 'package:elearn/TempPages/Payment_Details.dart';
import 'package:elearn/Test/Empyt.dart';
import 'package:elearn/Test/TestUI.dart';
import 'package:elearn/intro/LoginScreen.dart';
import 'package:elearn/intro/ParentRegistration.dart';
import 'package:elearn/intro/Settings_Page.dart';
import 'package:elearn/intro/WelcomeScreen.dart';
import 'package:elearn/intro/RegisterScreen.dart';
import 'package:elearn/intro/SplashScreen.dart';
import 'package:elearn/mainFrame/Chapter.dart';
import 'package:elearn/mainFrame/DashBoard.dart';
import 'package:elearn/mainFrame/Topics.dart';
import 'package:elearn/mainFrame/VIDEO_PLAYER.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'ExtraPages/FEEDBACK.dart';
import 'TempPages/Quizzes.dart';
import 'intro/LocationDetails.dart';
import 'intro/Notification.dart';
import 'intro/OTPScreen.dart';

 
void main(){
  Color myHexColor = Color(0xff40BFFF);

  //Now we use SystemChrome
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.blue[700],
    statusBarIconBrightness: Brightness.light
    ));
  
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "E LEARTN",
    //home: SplashScreen(),  
    initialRoute: '/splash_screen',
    routes: {
      '/splash_screen' : (context) =>   SplashScreen()
     //'/settings_page' : (context) =>   Settings_Page()

    },
   ));

}



        
/*runApp(
     
    MaterialApp(
     theme: ThemeData(
       fontFamily: 'M_Medium'
     ),
    // initialRoute: SplashScreen(),
    debugShowCheckedModeBanner: false,  
   
    home: SplashScreen(),
    title: "E LEARN",
    routes: {
     'SplashScreen': (context) =>  SplashScreen(),
     'DashBoardPage': (context) =>  DashBoardPage(),
     'ChapterPage': (context) =>  ChapterPage(),
     'QuizzesPage': (context) =>  QuizzesPage(),
     'CertificationPage': (context) =>  CertificationPage(),
     'QUIZ_RESULT_PAGE': (context) =>  QUIZ_RESULT_PAGE(),
     'HISTORY_PAGE': (context) =>  HISTORY_PAGE(),
    },

   ));

    
  
}*/