import 'dart:async';

import 'package:elearn/Common/Primary_Blue_Btn.dart';
import 'package:elearn/Common/Temp_Bg.dart';
import 'package:elearn/intro/LoginScreen.dart';
import 'package:elearn/mainFrame/Chapter.dart';
import 'package:elearn/mainFrame/DashBoard.dart';
import 'package:elearn/mainFrame/Topics.dart';
import 'package:flutter/material.dart';
import 'package:animator/animator.dart';
import 'package:http/http.dart';



class Parent_Register_Page extends StatefulWidget {
  @override
  _Parent_Register_PageState createState() => _Parent_Register_PageState();
}

class _Parent_Register_PageState extends State<Parent_Register_Page>  with TickerProviderStateMixin {
  

  double opacity = 0.0;

  late Animation<Offset> _animation, _animation_2, _animation_3 ; 
  late AnimationController _controller, _controller_2, _controller_3;

  changeOpacity() {
  Future.delayed(Duration(seconds: 3), () {
    setState(() {
      opacity = opacity == 0.0 ? 1.0 : 0.0;
     // changeOpacity();
    });
  });
}

   @override
    void initState() {
      super.initState();  
      

     //CONTROLLER_ONE
 _controller = AnimationController(
        duration: const Duration(milliseconds: 1500),
        vsync: this,
      )..forward();
      _animation = Tween<Offset>(
        begin: const Offset(0.5, 0.0),
        end: const Offset(0.0, 0.0),
      ).animate(CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInCubic,
      ));

     //CONTROLLER_TWO
      _controller_2 = AnimationController(
        duration: const Duration(milliseconds: 1600),
        vsync: this,
      )..forward();
      _animation_2 = Tween<Offset>(
        begin: const Offset(0.7, 0.0),
        end: const Offset(0.0, 0.0),
      ).animate(CurvedAnimation(
        parent: _controller_2,
        curve: Curves.easeInCubic,
      ));
 
          //CONTROLLER_THREE
     _controller_3 = AnimationController(
        duration: const Duration(milliseconds: 1700),
        vsync: this,
      )..forward();
      _animation_3 = Tween<Offset>(
        begin: const Offset(0.9, 0.0),
        end: const Offset(0.0, 0.0),
      ).animate(CurvedAnimation(
        parent: _controller_3,
        curve: Curves.easeInCubic,
      ));


     changeOpacity();

    }

  Future<bool> _onBackPressed() async {
    // Your back press code here...
    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()  ));
     //Flutoaas.showToast(context, "Back presses");
    print('pressed');
    return true;
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: WillPopScope(
         onWillPop: _onBackPressed,
         child: Stack(
           children: [
             Blue_Bg(),
             Center(
               child: Container(
                 margin: EdgeInsets.all(20),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(50.0),color: Colors.transparent
                 ),
                 child: Card(
                    elevation: 5,
                     shape: RoundedRectangleBorder(
                      borderRadius: const BorderRadius.all( Radius.circular(35.0), ),),
                     
                   child: Builder(
                     builder: (context) {
                       return Wrap(
                         children: [
                           SlideTransition(
                             position: _animation,
                             child: Container(
                                   margin: EdgeInsets.only(top: 40,left: 15,right: 15),
                                   child: Text_Field('Parent Name')),
                           ),
                           SlideTransition(
                             position: _animation_2,
                             child: Container(
                                   margin: EdgeInsets.only(top: 10,left: 15,right: 15),
                                   child: Text_Field('Email Id')),
                           ), 
                           SlideTransition(
                      position: _animation_3,
                             child: Container(
                                   margin: EdgeInsets.only(top: 10,left: 15,right: 15),
                                   child: Text_Field('Mobile Number')),
                           ), 
                        SizedBox(height: 10,),    

                         AnimatedOpacity(
                          opacity: opacity,
                         duration: Duration(seconds: 1),
                         child: Container(
                              margin: EdgeInsets.only(left:15,right: 15,top: 15,bottom: 40),
                              child: SizedBox(
                                width: double.infinity,
                                height: 70,
                                child: Primary_Btn('CONNECT', MaterialPageRoute(builder: (context) => DashBoardPage() ))
                                ))
                            )

                            ,            
                         ],
                       );
                     }
                   ),
                 ),
               ),
             )
           ]
           ),
       )
    );
    
  }
}