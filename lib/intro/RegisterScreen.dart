import 'package:elearn/Common/CustomTextStyle.dart';
import 'package:elearn/Common/Primary_Blue_Btn.dart';
import 'package:elearn/Common/Temp_Bg.dart';
import 'package:elearn/intro/LoginScreen.dart';
import 'package:flutter/material.dart';



class Register_Page extends StatefulWidget {
  @override
  _Register_PageState createState() => _Register_PageState();
}

class _Register_PageState extends State<Register_Page> with TickerProviderStateMixin {
  var cnt_pwd_one = TextEditingController(); 
  var cnt_pwd_two = TextEditingController(); 
  bool obscureText_ = true;

  bool _obscureText = true;

   //OPACITY
  double opacity = 0.0;

  changeOpacity() {
  Future.delayed(Duration(seconds: 3), () {
    setState(() {
      opacity = opacity == 0.0 ? 1.0 : 0.0;
    });
  });
}


   late Animation<Offset> _animation_1, _animation_2, _animation_3, _animation_4, _animation_5     ; 
   late  AnimationController _controller_1, _controller_2, _controller_3, _controller_4, _controller_5   ;

  @override
  void initState() {
    // TODO: implement initState
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


       //controller_2   
      _controller_2 = AnimationController(
        duration: const Duration(milliseconds: 1600),
        vsync: this,
      )..forward();
      _animation_2 = Tween<Offset>(
        begin: const Offset(0.5, 0.0),
        end: const Offset(0.0, 0.0),
      ).animate(CurvedAnimation(
        parent: _controller_2,
        curve: Curves.easeInCubic,
      ));


       //controller_3   
      _controller_3 = AnimationController(
        duration: const Duration(milliseconds: 1700),
        vsync: this,
      )..forward();
      _animation_3 = Tween<Offset>(
        begin: const Offset(0.5, 0.0),
        end: const Offset(0.0, 0.0),
      ).animate(CurvedAnimation(
        parent: _controller_3,
        curve: Curves.easeInCubic,
      )); 


       //controller_4   
      _controller_4 = AnimationController(
        duration: const Duration(milliseconds: 1800),
        vsync: this,
      )..forward();
      _animation_4 = Tween<Offset>(
        begin: const Offset(0.5, 0.0),
        end: const Offset(0.0, 0.0),
      ).animate(CurvedAnimation(
        parent: _controller_4,
        curve: Curves.easeInCubic,
      ));

          
       //controller_5   
      _controller_5 = AnimationController(
        duration: const Duration(milliseconds: 1900),
        vsync: this,
      )..forward();
      _animation_5 = Tween<Offset>(
        begin: const Offset(0.5, 0.0),
        end: const Offset(0.0, 0.0),
      ).animate(CurvedAnimation(
        parent: _controller_5,
        curve: Curves.easeInCubic,
      ));
 

      changeOpacity();
  }

  //PASSWORD VISIBILITY
       void _togglePasswordStatus() {
             setState(() {
             _obscureText = !_obscureText;
             obscureText_ = !obscureText_;
    });
  }    

  //Password Field
   Widget Text_Field_Pwd(String hint,bool obscureText,
                      TextEditingController cnt_pwd ){
    return Container(
      margin: EdgeInsets.only(left:20.0, right: 20.0, top: 12.5),    
      decoration:   Common_Style.Blue_bg_Decoration(),
      child: TextFormField(         
        obscureText:   obscureText  ,
        controller:  cnt_pwd ,
          decoration:  InputDecoration(
           contentPadding: EdgeInsets.only(left: 15,top: 15),
            hintText: hint ,hintStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          border: UnderlineInputBorder( borderSide: BorderSide.none,),   
           suffixIcon: IconButton(
             onPressed:  _togglePasswordStatus,               
             icon: Icon(obscureText  ?  Icons.visibility : Icons.visibility_off))          
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
         onWillPop: _onBackPressed ,
         child: Stack(
           children: [
             Blue_Bg(),
             //Center Content 
             Center(
                child: Hero(
                  tag: 'title',
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
                             position:  _animation_1,
                             child: Container(
                               margin: EdgeInsets.only(left: 20,right:20,top: 40),
                               child: Text_Field('Student Name')),
                           ),                
                          SlideTransition(
                            position:  _animation_2,
                            child: Container(                       
                              width: double.infinity,
                              margin: EdgeInsets.only(left: 40,right:
                              40,top: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Raised_Btn('Male '),SizedBox(width: 15,),Raised_Btn('FeMale ')
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height:5,),
                          SlideTransition(
                         position:  _animation_3,
                            child: Container(
                               margin: EdgeInsets.only(left: 20,right:20,top: 5),
                               child: Text_Field('Date of Birth')),
                          ), 
                          SlideTransition(
                            position:  _animation_4,
                            child: Container(
                               margin: EdgeInsets.only(left: 20,right:20,top: 5),
                               child: Text_Field_Pwd('Password', _obscureText, cnt_pwd_one)),
                          ),            
                          SlideTransition(
                            position:  _animation_5,
                            child: Container(
                               margin: EdgeInsets.only(left: 20,right:20,top: 5),
                               child: Text_Field_Pwd('Conform Password', obscureText_, cnt_pwd_two)),
                          ),            
                           SizedBox(height: 20,),
                           AnimatedOpacity(
                                opacity:  opacity,
                           duration: Duration(seconds: 2),
                             child: Primary_Btn('REGISTER',MaterialPageRoute(builder: (context) => LoginPage()))),  
                          
                            AnimatedOpacity(
                               opacity:  opacity,
                           duration: Duration(seconds: 3),
                              child: Register_Txt(context)),    
                           SizedBox(height: 30,)
                           
                            
                           
                         ]
                       ),
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

Widget Register_Txt(context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Text('Already a user ?',style: Common_Style.black_txt_bold,),
         Text_Button_('Login', context )
      ],
    );
  }

  Widget Text_Button_(String hint,context){
     return TextButton(onPressed: (){
         Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage() ));
     },
      child: Text(hint, 
      style:  Common_Style.style_1,));
  }


Widget GenderSelecter(){
  return Row(
    children: [
        Raised_Btn('Male '),Spacer(),Raised_Btn('FeMale ')
        
    ],
  );
}

Widget Raised_Btn(String gender_txt){  
  return SizedBox(
    height: 40,
    child: RaisedButton.icon(onPressed: (){},   
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(40.0),  
    ), 
    padding: EdgeInsets.only(left: 10, right: 35),
    icon: Icon(Icons.male,color: Colors.black),
    label: Text(gender_txt, style: Common_Style.black_txt_bold,),
    color: Colors.blue[50],   
    ),
  );
}