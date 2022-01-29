 
import 'package:elearn/Common/CustomTextStyle.dart';
import 'package:elearn/Common/Primary_Blue_Btn.dart';
 import 'package:elearn/Common/Temp_Bg.dart';
import 'package:elearn/intro/ForgotPassword.dart';
import 'package:elearn/intro/LocationDetails.dart';
import 'package:elearn/intro/OTPScreen.dart';
import 'package:elearn/intro/ParentRegistration.dart';
import 'package:elearn/intro/RegisterScreen.dart';
import 'package:elearn/intro/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

   late Animation<Offset> _animation_1, _animation_2, _animation_3     ; 
   late  AnimationController _controller_1, _controller_2, _controller_3   ;
 
 


class _LoginPageState extends State<LoginPage>  with TickerProviderStateMixin  {
  //ccontrollers
  var get_email = TextEditingController();

  var get_pwd = TextEditingController(); 


   //OPACITY
  double opacity = 0.0;

  
  bool _obscureText = true;

  //INITIAL STATE
     @override
    void initState() {
      super.initState();  

 
          //CONTROLLER_ONE
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

      changeOpacity() ;
      
      }
 


  

  //PASSWORD VISIBILITY
       void _togglePasswordStatus() {
             setState(() {
             _obscureText = !_obscureText;
    });
  }    

changeOpacity() {
  Future.delayed(Duration(seconds: 3), () {
    setState(() {
      opacity = opacity == 0.0 ? 1.0 : 0.0;
    });
  });
}

  Widget Register_Txt(context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Text('Dont have an Account ?', style: Common_Style.style_2 ,),
         Text_Button('Create',context),
      ],
    );
  }

 //Password Field
   Widget Text_Field_Pwd(){
    return Container(
      margin: EdgeInsets.only(left:20.0, right: 20.0, top: 12.5),    
      decoration:  BoxDecoration(
        color:  const Color(0XFFf5f5ff),
        borderRadius:  BorderRadius.circular(35.0)
      ),
      child: TextFormField(         
        obscureText: _obscureText,
        controller: get_pwd,
          decoration:  InputDecoration(
           contentPadding: EdgeInsets.only(left: 15,top: 15),
            hintText: 'Password',hintStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          border: UnderlineInputBorder( borderSide: BorderSide.none,),   
           suffixIcon: IconButton(onPressed:  _togglePasswordStatus,
                                icon: Icon(_obscureText  ?  Icons.visibility : Icons.visibility_off))          
        ),
          validator: (value){
                     if(value!.isEmpty){
                          return null;
                              }
                               return null;
                              },
                
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Stack(
         children: [
           Splash_Bg(),
          //Center Content 
           Center(
             child: Container(
               margin: EdgeInsets.all(15),
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(50.0),color: Colors.transparent
               ),          
                 child: Card(                     
                 elevation: 5,
                 shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all( Radius.circular(35.0), ),),
                   child: Wrap(
                     children:[
                       SlideTransition(
                         position: _animation_1 ,
                         child: Container(
                           margin: EdgeInsets.only(top: 40),
                           child: Text_Field('Email')),
                       ),
                       SlideTransition(
                         position: _animation_2,
                         child: Container(
                           margin: EdgeInsets.only(top: 0),
                           child: Text_Field_Pwd()),
                       ),  
                       Align(
                         alignment: Alignment.centerRight,                       
                         child: Container(
                           margin: EdgeInsets.only(right: 20.0),
                           child: AnimatedOpacity(
                             opacity:  opacity,
                             duration: Duration(seconds: 1),
                             child: Text_Button('Forgot Password ?',context  ))),
                       ),
                       AnimatedOpacity(
                         opacity:  opacity,
                         duration: Duration(seconds: 2),
                         child: Login_btn(context)),
                       AnimatedOpacity(
                         opacity:  opacity,
                         duration: Duration(seconds: 3),
                         child: Container(
                           margin: EdgeInsets.only(top: 10, bottom: 25),
                           child: Register_Txt(context)),
                       ),                                                
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



Widget Login_btn(context){
 return InkWell(
      onTap: (){
         Navigator.pop(context);
         Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: OTP_Page()));

       },
      child: Container(
         height: 50,
         width: double.infinity,
        margin: EdgeInsets.only(left:20.0, right: 20.0, top: 20.0), 
        decoration: Common_Style.primary_blue_btn_Decoration() ,
        child: Center(child: Text('LOGIN', style: TextStyle(color: Colors.white, 
        fontWeight: FontWeight.normal, fontSize: 16, fontFamily: 'M_Medium'), )),),
    ); 
}

Widget Text_Button(String hint,context){
     return TextButton(onPressed: (){
        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: Register_Page()));
      },
      child: Text(hint, 
      style:  Common_Style.style_1,));
  }

 Widget Text_Field(String hint){
    return Container(
      margin: EdgeInsets.only(left:20.0, right: 20.0, top: 0.0),    
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(25.0)
      ) ,
      child: TextField(
        decoration:  InputDecoration(
           contentPadding: EdgeInsets.only(left: 15),
            hintText: hint,hintStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          border: UnderlineInputBorder( borderSide: BorderSide.none,),    
        )        
      ),
    );
  }

   