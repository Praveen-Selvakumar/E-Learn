import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_spinkit/flutter_spinkit.dart';



class Blue_Bg extends StatelessWidget {
 
 
   
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
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Hero(
                     tag: 'title_is',
                     child: Container(
                       alignment: Alignment.center,
                       child: Text('E-LEARN', style: TextStyle(color: Colors.white, fontFamily:  'M_Light', fontSize: 22, letterSpacing: 6.0 ), ),
                     ),
                   ),
                   Hero(
                     tag: 'content_is',
                     child: Container(
                       margin: EdgeInsets.only(top: 30),
                       child: SpinKitSpinningLines(
                         color: Colors.white,
                         size: 50.0,),
                     ),
                   )
                  /* Transform.rotate(
                   angle: -.65,
                  child:  Image.asset('assets/transparent_book.png',width: 175, height: 175,),
                     ),*/
                   
                   //Text('E-Learn', style:  TextStyle(color: Colors.white, fontFamily: 'M_Light', fontSize: 30, fontWeight: FontWeight.bold),)
                 ],
               ),             
            ),
          )

         
        ], 
      );
  }
}



class Splash_Plain_Bg extends StatelessWidget{
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
          
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Hero(
                     tag: 'title_is',
                     child: Container(
                       alignment: Alignment.center,
                     //  child: Text('E-LEARN', style: TextStyle(color: Colors.white, fontFamily:  'M_Light', fontSize: 22, letterSpacing: 6.0 ), ),
                     ),
                   ),
                   /*Hero(
                     tag: 'content_is',
                     child: Container(
                       margin: EdgeInsets.only(top: 30),
                       child: SpinKitSpinningLines(
                         color: Colors.white,
                         size: 50.0,),
                     ),
                   )*/
                  /* Transform.rotate(
                   angle: -.65,
                  child:  Image.asset('assets/transparent_book.png',width: 175, height: 175,),
                     ),*/
                   
                   //Text('E-Learn', style:  TextStyle(color: Colors.white, fontFamily: 'M_Light', fontSize: 30, fontWeight: FontWeight.bold),)
                 ],
               ),             
            ),
          )

         
        ], 
      );


  }

}
  
