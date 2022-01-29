import 'package:elearn/Common/CommonBanner.dart';
import 'package:elearn/Common/Primary_Blue_Btn.dart';
import 'package:elearn/Common/Temp_Bg.dart';
import 'package:elearn/intro/LocationDetails.dart';
import 'package:flutter/material.dart';

import 'LoginScreen.dart';



class WelcomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _WelcomePage();
}

class _WelcomePage extends State<WelcomePage> {
  
  

  TextStyle getStyle(){
    return TextStyle(
      color: Colors.black,
      fontFamily: 'M_Medium',
      fontSize: 15,
      fontWeight: FontWeight.bold
    );
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
                           margin: EdgeInsets.only(bottom: 30),
                           child: CommonBanner())  ,
                           Container(
                          margin: EdgeInsets.only(top: 10, bottom: 30),
                          alignment: Alignment.center,
                          child: Primary_Btn('SKIP',MaterialPageRoute(builder: (context) => Location_Details_Page() ))),
                     

                         /* SizedBox(height: 20,),
                          Container(
                            margin: EdgeInsets.only(top: 50),
                            alignment: Alignment.center,
                            child: Text('Welcome', style: getStyle(),)),SizedBox(height: 20,),
                   
                     Container(
                       alignment: Alignment.center,
                       margin: EdgeInsets.only(top:  10, bottom: 15),
                       child: Text('Money Commando Suresh!', style: getStyle(),)),SizedBox(height: 5,),
                     Align(
                       alignment: Alignment.center,
                       child: Container(
                         margin: EdgeInsets.only(bottom: 20),
                         alignment: Alignment.center,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(15.0),
                           color: Colors.blue[50],
                         ),
                         height: 175,
                         width: 175,             
                         
                         
                       ),
                     ),SizedBox(height: 15,),
                   
                     Container(
                       alignment: Alignment.center,
                       child: Text('It is smart to Jinarically wise early!', style: getStyle(),)),SizedBox(height: 5,),
                                   
                      InkWell(
                        onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Location_Details_Page()) );
       
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 10, bottom: 30),
                          alignment: Alignment.center,
                          child: Primary_Btn('LOGO',MaterialPageRoute(builder: (context) => Location_Details_Page() ))),
                      ), */
                       
                                                
                       ]
                     ),
                   ),
               ),
             )
              
           ],
         ),
       ),      
    );
  }
}