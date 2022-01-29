import 'package:elearn/Common/CustomTextStyle.dart';
import 'package:elearn/Common/Toolbar.dart';
import 'package:elearn/Common/TestDrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';



class QUIZ_RESULT_PAGE extends StatefulWidget {
 
  @override
  _QUIZ_RESULT_PAGEState createState() => _QUIZ_RESULT_PAGEState();
}

class _QUIZ_RESULT_PAGEState extends State<QUIZ_RESULT_PAGE> {

       List status  = [true, false, true ,true, false, true,] ;
 
         
  @override
  Widget build(BuildContext context) {
     return WillPopScope(
      onWillPop:   null,
      child: Scaffold(
       drawer: new TestDrawer(true, true, true, true , true , true , true, true, false, true, true),
        body: Container(
           child: Column(
            children: [
              SizedBox(height: 35,),
                Material(
                  elevation: 5,
                  child: Cmn_Toolbar(title_: 'QUIZ RESULTS',key :  null, context: context, ),
                ),
                 SizedBox(height: 35,),
                 Align(
                   alignment: Alignment.topLeft,
                   child: Container(
                     margin: EdgeInsets.only(left: 15),
                     child: COMMUNITY_TEXT('Chapter : ','Name of the chapter', 14 )  
                   ),
                 ),    
                 Container(
                   margin: EdgeInsets.only(top: 15, left:  15, right:  15),
                   child: POINTS()),      
                 Expanded(
                   child: AnimationLimiter(
                     child: ListView.builder(
                             shrinkWrap: true,
                             itemCount : status.length,
                             itemBuilder: (BuildContext context, int index){
                                  return AnimationConfiguration.staggeredList(
                                    position: index,
                                    duration: const Duration(milliseconds: 2000),
                                    child: FadeInAnimation(
                                      child: SlideAnimation(
                                        child: ScaleAnimation(
                                          child: Container(
                                            margin: EdgeInsets.only(top: 0, left:  15, right:  15, bottom: 15),
                                            child: MAIN_CARD(index),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                             }),
                   ),
                 )
  

  /**
   * Container(
                   margin: EdgeInsets.only(top: 15, left:  15, right:  15),
                   child: POINTS()),
                   MAIN_CARD()
   */

                  
                 
            ],
          ),
        ),   
        
      ),
    );
  }

  Widget MAIN_CARD(int index){
     return Card(
       elevation: 10,
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(15)
       ),
       child: Wrap(
         children: [
           Container(
             margin: EdgeInsets.only(left: 15, right:  15, top: 15),
             child: Row(
               children: [
                  Flexible(child: Text('How does kendrick react to moving objects ?', style: Common_Style.txt_style_primary ,)),
                   Text('1', style: TextStyle(color: Colors.grey[300],fontFamily: 'M_Medium',
                                    fontSize: 38) ,)
               ],
             ),
           ),
           Container(
             margin: EdgeInsets.only(left: 15, right:  15,top:  20, bottom: 7.5),
             child: Text('Your Answer', style:  TextStyle(color: Colors.grey[200], fontSize: 16, fontFamily: 'M_Medium' ),)),  
           Container(
              margin: EdgeInsets.only(left: 15, right:  15, top: 0, bottom: 10),
             child: Row(
               children: [
                 Text('a. Option 1', style:  TextStyle(color: Colors.black, fontSize: 16, fontFamily: 'M_Medium' ),),
                 Spacer(),
                 Image.asset( status[index] == true ? 'assets/wrong.png' : 'assets/double_tick.png'  ,
                  width: 25, height: 25, color: status[index] == true ? Colors.red :  Colors.green ,)
                ],
             ),
           ),

           Visibility(
             visible: status[index],
             child: Container(
                width: double.infinity,
               decoration: BoxDecoration(
                 color: Colors.green[50] ,
                 borderRadius: BorderRadius.only( bottomLeft: Radius.circular(15.0), 
                 bottomRight: Radius.circular(15.0),   )    ),
               child: Align(
                  alignment: Alignment.topLeft,
                 child: Column(
                   children: [
                     Container(
                       margin: EdgeInsets.only(left: 15, right:  15,top:  20, bottom: 7.5),
                       child: Text('Correct Answer', style:  TextStyle(color: Colors.grey[400], fontSize: 18, fontFamily: 'M_Medium' ),)),  
                     Container(
                       margin: EdgeInsets.only(bottom: 15),
                       child: Text('C. Option 1', style:  TextStyle(color: Colors.black, fontSize: 16, fontFamily: 'M_Medium' ),)),
                 
                   ],
                 ),
               ), 
             ),
           )

            

           

           
         ],
       ),
     );
  }

  Widget POINTS(){
    return Stack(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.blue[50],
        ),
        Container(
          margin: EdgeInsets.only(top: 20,left: 5),
          child: COMMUNITY_TEXT('10',' /15', 17 ))
       
      ],
    );
  }


  Widget COMMUNITY_TEXT(String HINT_1,String HINT_2, double SIZE){
    return  RichText(
             text: TextSpan(children: <TextSpan>[
             TextSpan(
                  text:   HINT_1 ,
                  style:  TextStyle(color: Colors.amber, fontFamily: 'M_Medium',
                  fontWeight: FontWeight.bold , fontSize: SIZE )  ),
            TextSpan(
                  text:  HINT_2 ,
                  style:  TextStyle(color: Colors.black, fontFamily: 'M_Medium',
                  fontWeight: FontWeight.bold , fontSize: SIZE ))        
                            ]));
  }

}