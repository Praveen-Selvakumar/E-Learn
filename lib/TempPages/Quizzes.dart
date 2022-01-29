import 'package:elearn/Common/CustomTextStyle.dart';
import 'package:elearn/Common/Toolbar.dart';
import 'package:elearn/ExtraPages/QUIZ_RESULT.dart';
import 'package:elearn/Common/TestDrawer.dart';
import 'package:elearn/mainFrame/DashBoard.dart';
import 'package:elearn/mainFrame/Topics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';



class QuizzesPage extends StatefulWidget {
 
  @override
  _QuizzesPageState createState() => _QuizzesPageState();
}

class _QuizzesPageState extends State<QuizzesPage> {

     int _radioSelected = 0;
     List options = ['A','B','C','D']; 
     bool A_ =  false ;
     bool B_ =  false ;
     bool C_ =  false ;
     bool D_ =  false ;


  Future<bool> _onBackPressed() async {
    // Your back press code here...
    Navigator.push(context, MaterialPageRoute(builder: (context) => DashBoardPage()  ));
     //Flutoaas.showToast(context, "Back presses");
    print('pressed');
    return true;
}


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop:  _onBackPressed,
      child: Scaffold(
       drawer: new TestDrawer(true, true, false, true , true , true , true, true, true, true, true),
        body: Container(
           child: Column(
            children: [
              SizedBox(height: 35,),
                Material(
                  elevation: 5,
                  child: Cmn_Toolbar(title_: 'Quizzes',key :  null, context: context, ),
                ),
                 SizedBox(height: 35,),
                 Align(
                   alignment: Alignment.topLeft,
                   child: Container(
                     margin: EdgeInsets.only(left: 15),
                     child: RichText(
                            text: TextSpan(children: <TextSpan>[
                              TextSpan(
                                text:  'Chapter : ',
                                style:  TextStyle(color: Colors.amber, fontFamily: 'M_Medium',
                                 fontWeight: FontWeight.bold , fontSize: 14)
                              ),
                              TextSpan(
                                text: 'Name of the chapter',
                                style:  TextStyle(color: Colors.black, fontFamily: 'M_Medium',
                                 fontWeight: FontWeight.bold , fontSize: 14)
                              )
                 
                            ])),
                   ),
                 ),                  
               Expanded(
                 child: AnimationLimiter(
                   child: ListView.builder(
                            shrinkWrap: true,
                           itemCount : 4,
                           itemBuilder: (BuildContext context, int index){
                             return Container(
                               margin: EdgeInsets.only(left: 10, right: 10, top:  10),
                               child: InkWell(
                                 onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) =>  QUIZ_RESULT_PAGE()  )) ;
                 
                                 },
                                 child: AnimationConfiguration.staggeredList(
                                   position: index,
                                   duration: const Duration(milliseconds: 2000),
                                   child: FadeInAnimation(
                                     child: SlideAnimation(
                                       child: ScaleAnimation(
                                         child: MAIN_CARD(index)))))));
                           }),
                 ),
               )  
                 
            ],
          ),
        ),   
        
      ),
    );
  }

   Widget MAIN_CARD(index){
     return Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
              ),
              child  : Wrap(
                children: [
                   Container(
                     margin:  EdgeInsets.only(left:  15, top: 20, right:  15, bottom: 20),
                     child: Text('1. How does kendrick react to meeting objects ?', style: Common_Style.txt_style_primary ,)),
                     ListView.builder(
                        primary: false,
                       shrinkWrap: true,
                       itemCount : 4,
                       itemBuilder: (BuildContext context, int index){
                          return RADIO_BOX(index);
                       })
                     
                ],
                
              ) 
                 );
   }

   Widget RADIO_BOX(int index){
     return Container(
       margin: EdgeInsets.only(left: 15, right: 15, top: 0, bottom: 15),
       decoration: BoxDecoration(
         color: _radioSelected == index ? Colors.green[100] : Colors.blue[50]  , borderRadius: BorderRadius.circular(20), 
       ) ,
       child: Row(
         children: [
           Container(
             margin: EdgeInsets.only(left :  20, right: 10, top: 10, bottom: 10),
             decoration: BoxDecoration(
               color: Colors.white , borderRadius: BorderRadius.circular(5), border: Border.all(
           width: 1, color: Colors.grey
         ),  ), child: Container(
           margin: EdgeInsets.all(5),
           child: Text(options[index], style: Common_Style.txt_style_primary,)),  ),
         Container(
           margin: EdgeInsets.only(top: 0, ),
           child: Text('Options '+options[index], style:  Common_Style.txt_style_primary,)),
         Spacer(),
         Radio( value: index,
                    groupValue: _radioSelected ,
                    activeColor: Colors.blue,
                    onChanged: (value) {
                      setState(() {
                        _radioSelected =  int.parse(value.toString());
                         
                        //_radioVal = 'male';
                      });
                    },
                    toggleable: true,
                  ),
                    
          

         ],
       ),

     );
   }

}