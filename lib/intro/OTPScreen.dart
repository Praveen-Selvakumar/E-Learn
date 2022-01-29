import 'package:elearn/Common/CustomTextStyle.dart';
import 'package:elearn/Common/OTP_Entry_Field.dart';
import 'package:elearn/Common/Primary_Blue_Btn.dart';
import 'package:elearn/Common/Temp_Bg.dart';
import 'package:elearn/intro/LocationDetails.dart';
import 'package:elearn/intro/LoginScreen.dart';
import 'package:elearn/intro/WelcomeScreen.dart';
import 'package:flutter/material.dart';



class OTP_Page extends StatefulWidget {
 
  @override
  _OTP_PageState createState() => _OTP_PageState();
}

class _OTP_PageState extends State<OTP_Page> with TickerProviderStateMixin {

    //OPACITY
  double opacity = 0.0;

  changeOpacity() {
  Future.delayed(Duration(seconds: 3), () {
    setState(() {
      opacity = opacity == 0.0 ? 1.0 : 0.0;
    });
  });
}


   late Animation<Offset> _animation_1    ; 
   late  AnimationController _controller_1     ;



   @override
  void initState() {
     super.initState();

      //controller_1  
      _controller_1 = AnimationController(
        duration: const Duration(milliseconds: 1500),
        vsync: this,
      )..forward();
      _animation_1 = Tween<Offset>(
        begin: const Offset(0.5, 0.0),
        end: const Offset(0.0, 0.0),
      ).animate(CurvedAnimation(
        parent: _controller_1,
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

    /*Widget backPressed(){
     return WillPopScope(
        onWillPop: Navigator.push(context, route),
       child: ,
     );
   } */

  @override
  Widget build(BuildContext context) {

      

    return Scaffold(
      body: WillPopScope(
         onWillPop:  _onBackPressed,
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
                          SizedBox(height: 20,),
                          
                   
                     Container(
                       alignment: Alignment.center,
                       margin: EdgeInsets.only(top:  40, bottom: 20),
                       child: Text('Please enter verification code \nsend to your mail', style: getStyle(),)),SizedBox(height: 5,),
                     Align(
                       alignment: Alignment.center,
                       child:  AnimatedOpacity(
                         opacity:  opacity,
                          duration: Duration(seconds: 0),
                         child: OTP_Widget())
                     ),SizedBox(height: 15,),
                    
                      Container(
                       alignment: Alignment.center,
                       margin: EdgeInsets.only(top:  20, bottom: 10),
                       child: AnimatedOpacity(
                         opacity:  opacity,
                          duration: Duration(seconds: 1),
                         child: Text('Didnt Receive and OTP ?', style: getStyle(),))),SizedBox(height: 5,),
                   
      
                     Container(
                       alignment: Alignment.center,
                       child: AnimatedOpacity(
                          opacity:  opacity,
                          duration: Duration(seconds: 2),
                         child: Text_Button('Resend OTP', context  ))  ),SizedBox(height: 5,),
                                   
                      InkWell(
                        onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomePage()) );
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 10, bottom: 30),
                          alignment: Alignment.center,
                          child: AnimatedOpacity(
                            opacity:  opacity,
                          duration: Duration(seconds: 3),
                            child: Primary_Btn('SUBMIT',MaterialPageRoute(builder: (context) => WelcomePage() )))),
                      ), 
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

Widget Text_Button(String hint, BuildContext context ){
     return TextButton(onPressed: (){
         //Navigator.push(context, route);
     },
      child: Text(hint, 
      style:  Common_Style.style_1,));
  }

  TextStyle getStyle(){
    return TextStyle(
      color: Colors.black,
      fontFamily: 'M_Medium',
      fontSize: 14,
      fontWeight: FontWeight.bold
    );
  }
}