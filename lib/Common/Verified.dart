import 'package:elearn/intro/SplashScreen.dart';
import 'package:flutter/material.dart';



class VerifiedPage extends StatefulWidget {
   

  @override
  _VerifiedPageState createState() => _VerifiedPageState();
}

class _VerifiedPageState extends State<VerifiedPage> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Stack(
         children: [
           Splash_Bg(),
           Center(
             child: Container(
               margin: EdgeInsets.only(left:25, right: 25),
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(50.0),color: Colors.transparent
               ),                           
                 child: Card(
                   elevation: 5,
                   shape: RoundedRectangleBorder(
                    borderRadius: const BorderRadius.all( Radius.circular(35.0), ),),
                   child: Wrap(
                     children:[                        
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(top: 60, left: 00, right: 00, bottom: 30),                            
                          child: Image.asset('assets/ver_icon.png', width: 175, height: 175,)),

                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(top: 20, left: 0, right: 0, bottom: 30),                            
                          child: Text('Verified', style:  TextStyle(color: Colors.blue[700], fontFamily: 'M_Medium', fontSize: 20, fontWeight: FontWeight.bold ),)),  
                                                                       
                 
                    
                      ]
                   ),
                 ),
             ),
           )
            
         ],
       ),   
    );
  }
}