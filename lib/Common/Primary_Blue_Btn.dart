import 'package:elearn/Common/CustomTextStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Primary_Btn extends StatelessWidget{
 
 String hint = '' ;
 MaterialPageRoute route ;
  
Primary_Btn(this.hint, this.route);


  @override
  Widget build(BuildContext context) {
    
    return InkWell(
      onTap: (){
         Navigator.pop(context);
        Navigator.push(context, route );
      },
      child: Container(
         height: 50,
         width: double.infinity,
        margin: EdgeInsets.only(left:20.0, right: 20.0, top: 20.0), 
        decoration: Common_Style.primary_blue_btn_Decoration() ,
        child: Center(child: Text(hint, style: TextStyle(color: Colors.white, 
        fontWeight: FontWeight.normal, fontSize: 16, fontFamily: 'M_Medium'), )),),
    );
  
  }

}