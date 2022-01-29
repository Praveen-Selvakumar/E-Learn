import 'package:elearn/Common/Toolbar.dart';
import 'package:elearn/TempPages/Quizzes.dart';
import 'package:elearn/Common/TestDrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';


class HISTORY_PAGE extends StatefulWidget {
 
  @override
  _HISTORY_PAGEState createState() => _HISTORY_PAGEState();
}

class _HISTORY_PAGEState extends State<HISTORY_PAGE> {
  
  List numbers =  ["1", "2"];
  List attempts = ["3", "1"];
  List marks = ["10", "6"];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
       drawer: new TestDrawer(true, true, true, true , true , true , true, false, true, true, true),
       body: Column(
         children: [
           SizedBox(height: 35,),
              Material(
                elevation: 5,
                child: Cmn_Toolbar(title_: 'HISTORY',key :  null, context: context, ),                
              ),
              SizedBox(height: 30,),
              DISPLAY_LIST(),
         ],
       ),
    );
  }

  Widget DISPLAY_LIST(){
   return  AnimationLimiter(
     child: ListView.builder(
       shrinkWrap: true,
       itemCount : 2,
       itemBuilder: (BuildContext context, int index){
          return AnimationConfiguration.staggeredList(
            position: index,
            duration: const Duration(milliseconds: 2000),
            child: FadeInAnimation(
              child: SlideAnimation(
                child: ScaleAnimation(
                  child: InkWell(
                    onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>  QuizzesPage()  )) ;
                   
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)
                        ),
                          child: Stack(
                            children: [
                            Wrap(
                              children: [
                                 Row(
                                   children: [
                                     Container(
                                       margin: EdgeInsets.only(left: 20, top: 15, bottom: 0, right: 0),
                                       child: Text(numbers[index].toString(), style: TextStyle(fontSize: 38, color: Colors.grey, fontFamily: 'M_Medium' ) ,)),
                                    set_title_text('Name of the Chapter', true)  
                                   ],
                                 ),
                          
                                  Row(
                                   children: [
                                      set_title_text('No of Attempts : ', true) ,
                                      set_title_text(attempts[index].toString(), false) ,
                                      SizedBox(height: 20,)
                                       
                                   ],
                                 ), 
                              ],
                            ),
                    
                            Container(
                              margin: EdgeInsets.only(top: 25, right: 15),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: CircleAvatar(
                                  radius: 27.5  ,
                                  backgroundColor: Colors.blue[50] ,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 37.5, right: 20),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child:  RichText(
                                  text: TextSpan(children: <TextSpan>[
                                    TextSpan(
                                      text: marks[index].toString(),
                                      style:  TextStyle(color: Colors.amber, fontFamily: 'M_Medium',
                                       fontWeight: FontWeight.bold , fontSize: 18)
                                    ),
                                    TextSpan(
                                      text: ' /15',
                                      style:  TextStyle(color: Colors.black, fontFamily: 'M_Medium',
                                       fontWeight: FontWeight.bold , fontSize: 18)
                                    )
                    
                                  ]))
                              ),
                            )
                    
                    
                            ],
                        
                          ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );  
      }),
   );
  }

  Widget set_title_text(String HINT, bool  isBlack){

     return Container(
       margin: EdgeInsets.only(left : 15, top: 15, bottom: 15),
       child: Text( HINT , style: TextStyle(color: isBlack ? Colors.black : Colors.orange , fontFamily: 'M_Medium'
        , fontWeight: FontWeight.bold, fontSize:  14,))
     );

   }

}