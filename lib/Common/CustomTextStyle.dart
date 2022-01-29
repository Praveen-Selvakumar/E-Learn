import 'package:flutter/material.dart';

class Common_Style {
 
  
   //ORANGE BOLD TEXT
   static const style_1 = TextStyle(color: Color(0XFFfbcb5f), fontSize: 15, fontWeight: FontWeight.bold);
   
   //BLACK BOLD TEXT
   static const style_2 = TextStyle(color: Colors.black , fontSize : 15, fontWeight: FontWeight.bold ); 

  //GREY STYLE LIGHT
  static const sty_grey_bold = TextStyle(color: Colors.grey , fontSize : 15, fontWeight: FontWeight.bold , fontFamily: 'M_Medium'); 
  
  //GREY STYLE LIGHT
  static const sty_green_bold = TextStyle(color: Colors.green , fontSize : 15, fontWeight: FontWeight.bold , fontFamily: 'M_Medium'); 

    
   static const txt_style_primary =  TextStyle(color: Colors.black,fontFamily: 'M_Medium',
                               fontWeight: FontWeight.bold , fontSize: 15);
   static const black_txt_bold   =  TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold);
   static Blue_bg_Decoration(){
      return BoxDecoration(
        color:  const Color(0XFFf5f5ff),
        borderRadius:  BorderRadius.circular(35.0)
      );
    }

    static  primary_blue_btn_Decoration(){
      return BoxDecoration(
        color:  const Color(0XFF0081c5),
        borderRadius:  BorderRadius.circular(35.0)
      );
    }

    
 }
