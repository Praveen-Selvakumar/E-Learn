import 'package:animated_widgets/generated/i18n.dart';
import 'package:elearn/Common/CustomTextStyle.dart';
import 'package:flutter/material.dart';



class COMMON_WIDGETS{
 
  Widget  sample_container(){
         return Text("data");
  } 

   static const  HT_CMN_STY = TextStyle(color:  Colors.black, fontWeight: FontWeight.bold, fontFamily: 'M_Light' ); 

   Widget set_title_text(String HINT){
     return Container(
       margin: EdgeInsets.only(left : 15, top: 15, bottom: 15),
       child: Text( HINT , style: TextStyle(color: Colors.black, fontFamily: 'M_Medium'
        , fontWeight: FontWeight.bold, fontSize:  14,))
     );
   }
  

  

     ANIMATION_CONTROLLER(AnimationController _controller, context,
      Animation<Offset> _animation, Duration duration ){
     _controller =  AnimationController(
        duration:  duration ,
        vsync: context ,
      )..forward();
      _animation = Tween<Offset>(
        begin: const Offset(0.7, 0.0),
        end: const Offset(0.0, 0.0),
      ).animate(CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInCubic,
      ));
   }


    

Widget   TB_WITH_TITLE(String title_, BuildContext context,  MaterialPageRoute route){
  return Card(
    elevation: 2.5,
    child: Container(
       width: double.infinity,
       padding: EdgeInsets.only(left: 5, top: 13,bottom: 13, ),
       decoration: BoxDecoration(
         border: Border(
           bottom: BorderSide(color: Colors.grey)
         )
       ),
       child: Row(
        children: [
          InkWell(
            onTap: (){
              Navigator.push(context, route);
            },
            child: Image.asset('assets/icons/back.png', width:  25, height: 25 ,)),
          Spacer(),
          TOOLBAR_TITLE(title_),
          Spacer()
         ],
      ),
    ),
  );
}

Widget TOOLBAR_TITLE(String title_){
   return Text(title_,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'M_Medium'),);

}

Widget FORM_FIELD_TITLE(String hint_){
  return Container(
    margin: EdgeInsets.only(top: 10),
    child: Text( hint_ , style: TextStyle(color: Colors.black, fontFamily: 'M_Light'
          , fontWeight: FontWeight.bold, fontSize:  14,)),
  );
}

Widget BLUE_BG_FORM_FIELD(String hint_){
 return Container(
   margin: EdgeInsets.only(top: 15),
   width: double.infinity,
   height: 45,
   decoration: BoxDecoration(
     color: Colors.blue[50],
     borderRadius: BorderRadius.circular(15.0)
   ),
   child: TextFormField(
       decoration: InputDecoration(
        border: InputBorder.none,
         hintText: hint_,
         contentPadding: EdgeInsets.only(left: 15),
         hintStyle: TextStyle(           
           fontWeight: FontWeight.bold, fontFamily: 'M_Medium', fontSize: 14, 
         )
       ),
   ),
 );
}

Widget DARK_BLUE_BTN(String hint_){
  return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blue[900],
        borderRadius: BorderRadius.circular(15)
      ),
      child: Center(
        child: Text(hint_,  style: TextStyle(           
           fontWeight: FontWeight.bold, fontFamily: 'M_Medium', fontSize: 14, 
           color: Colors.white
         ) ,),
      ) ,
  );
}



  Widget DROP_DOWN(String hint,List<String> lists){
     return Container(
      width: double.infinity,
      height: 50,
      margin: EdgeInsets.only(left:20.0, right: 20.0, top: 0.0),    
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(25.0)
      ) ,
      child:  DropdownButtonFormField<String>(    
        isExpanded: true,             
         decoration: InputDecoration(
           contentPadding: EdgeInsets.only(left: 15, right :15),
           border: UnderlineInputBorder( borderSide: BorderSide.none,),                 
         ),       
         
         hint: Text(hint, style: TextStyle(
           color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold
         ),),         
         icon: Image.asset('assets/down_arrow.png',width: 15,height: 15,),
         items: lists.map((String value) {
         return DropdownMenuItem<String>(
         value: value,
         child: new Text(value, style: Common_Style.style_2 ),
       );
      }).toList(),
     onChanged: (_) {},
         ),
      
    );
  
  }
 

}