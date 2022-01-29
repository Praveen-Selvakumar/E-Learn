 
import 'dart:async';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:elearn/Common/Temp_Bg.dart';
 import 'package:elearn/Test/Empyt.dart';
import 'package:elearn/intro/LoginScreen.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {



  late Animation<Offset> _animation, _animation_2  ; 
  late AnimationController _controller, _controller_2 ;

  @override
  void initState() {
     super.initState();

//CONTROLLER_ONE
 _controller = AnimationController(
        duration: const Duration(milliseconds: 1500),
        vsync: this,
      )..forward();
      _animation = Tween<Offset>(
        begin: const Offset(-0.9, 0.0),
        end: const Offset(0.0, 0.0),
      ).animate(CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInCubic,
      ));

  //CONTROLLER_ONE
 _controller_2 = AnimationController(
        duration: const Duration(milliseconds: 1500),
        vsync: this,
      )..forward();
      _animation_2 = Tween<Offset>(
        begin: const Offset(0.9, 0.0),
        end: const Offset(0.0, 0.0),
      ).animate(CurvedAnimation(
        parent: _controller_2,
        curve: Curves.easeInCubic,
      ));    

    Timer(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => LoginPage()));
    }); 
    
  }


  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
       
      body:Stack(
        children: [
          Splash_Plain_Bg(),
              Positioned(
             bottom: -70,
              left: -5,
            child: Align(
              alignment: Alignment.bottomLeft,
              child: SlideTransition(
                position: _animation,
                child: Image.asset('assets/bottom_left_bg.png')),
            ),
          ),
          Center(
            child: Text('E-LEARN', style: TextStyle(fontSize: 20, letterSpacing: 10, color: Colors.white),),
          ),
          Positioned(
             top: -70,
              right: -5,
            child: Align(
              alignment: Alignment.topRight,
              child: SlideTransition(
                position: _animation_2,
                child: Image.asset('assets/top_right_bg.png')),
            ),
          ),
        ],
         )
    );
  }
}


//SPLASH_BACKGROUND
class Splash_Bg extends StatelessWidget { 
   
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Container(
              width: double.infinity,
              height: double.infinity,
           child:  FittedBox(
             child: Image.asset('assets/main_bg.png'),
             fit: BoxFit.fill,
            ),
          ),   
          
          Positioned(
             bottom: -70,
              left: -5,
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Image.asset('assets/bottom_left_bg.png'),
            ),
          ),   
          Positioned(
             top: -70,
              right: -5,
            child: Align(
              alignment: Alignment.topRight,
              child: Image.asset('assets/top_right_bg.png'),
            ),
          ),
           

         
        ], 
      );
  }
}
