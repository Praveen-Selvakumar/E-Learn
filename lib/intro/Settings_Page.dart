import 'package:elearn/Common/Cmn_Widgets.dart';
import 'package:elearn/mainFrame/DashBoard.dart';
import 'package:flutter/material.dart';


 

 class Settings_Page extends StatefulWidget {
  
   @override
   _Settings_PageState createState() => _Settings_PageState();
 }
 
 class _Settings_PageState extends State<Settings_Page> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: SafeArea(
         child: SingleChildScrollView(
           child:Column(            
             children: [
                COMMON_WIDGETS().TB_WITH_TITLE('Settings', context, MaterialPageRoute(builder: (context) => DashBoardPage()) ),
                SizedBox(height: 10,),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: SETTINGS_CONTENT())
                

             ],
           ) ,
         ),
       ) ,       
     );
   }


  Widget SETTINGS_CONTENT(){
    return Stack(    
      children: [                 
      Card(        
        elevation: 5,
        margin: EdgeInsets.only(left: 5, right: 5, top: 80, bottom: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0)
        ),
        child: Container(
           width: double.infinity,
           margin: EdgeInsets.only(top: 80,left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
             children: [
              COMMON_WIDGETS().FORM_FIELD_TITLE('Name'),SizedBox(height: 5,),
              COMMON_WIDGETS().BLUE_BG_FORM_FIELD('Name here'),SizedBox(height: 10,),
              //Email
              COMMON_WIDGETS().FORM_FIELD_TITLE('Email'),SizedBox(height: 5,),
              COMMON_WIDGETS().BLUE_BG_FORM_FIELD('Email here'),SizedBox(height: 10,),
              //Phone
              COMMON_WIDGETS().FORM_FIELD_TITLE('Phone'),SizedBox(height: 5,),
              COMMON_WIDGETS().BLUE_BG_FORM_FIELD('Phone here'),SizedBox(height: 10,),
              //Current Password
              COMMON_WIDGETS().FORM_FIELD_TITLE('Current Password'),SizedBox(height: 5,),
              COMMON_WIDGETS().BLUE_BG_FORM_FIELD('Current Password here'),SizedBox(height: 10,),
              //New Password
              COMMON_WIDGETS().FORM_FIELD_TITLE('New Password'),SizedBox(height: 5,),
              COMMON_WIDGETS().BLUE_BG_FORM_FIELD('New Password here'),SizedBox(height: 10,),
              //Conform Password
              COMMON_WIDGETS().FORM_FIELD_TITLE('Conform Password'),SizedBox(height: 5,),
              COMMON_WIDGETS().BLUE_BG_FORM_FIELD('Conform Password here'),SizedBox(height: 10,),
              //submit Btn
              SizedBox(height: 30,),
              COMMON_WIDGETS().DARK_BLUE_BTN('SUBMIT'),SizedBox(height: 30,),

              
            


              
            ],
          ),
        ),
      ),
 
      Center(
          child: Card(
            elevation: 2.5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5)
            ),
            child: Container(
              height: 150,
              width: 180,
              color: Colors.blue[50],
            ),
          ),
        ),
      Positioned(
        right: 57.5,
        top: 115,
        child: Align(
          alignment: Alignment.topRight,
           child: MaterialButton(
              onPressed: () {},
              color: Colors.white,
              textColor: Colors.white,
              child:  Image.asset('assets/icons/edit.png' ,width: 22.5,  height: 22.5, color: Colors.black,),
              padding: EdgeInsets.all(15),
              shape: CircleBorder(),) , 
        ),
      )  
      ],    
    );
  }

 }
