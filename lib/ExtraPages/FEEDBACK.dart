import 'package:elearn/Common/Cmn_Widgets.dart';
import 'package:elearn/Common/CustomTextStyle.dart';
import 'package:elearn/Common/Toolbar.dart';
import 'package:elearn/ExtraPages/HISTORY.dart';
import 'package:elearn/Common/TestDrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

 
 class FEED_BACK_PAGE extends StatefulWidget {
 
   @override
   _FEED_BACK_PAGEState createState() => _FEED_BACK_PAGEState();
 }
 
 class _FEED_BACK_PAGEState extends State<FEED_BACK_PAGE> with TickerProviderStateMixin {

   
    late  Animation<Offset> _animation_1  ; 
    late  AnimationController _controller_1  ;

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

  }

  


   @override
   Widget build(BuildContext context) {
     return Scaffold(
       drawer: new TestDrawer(true, true, true, true , true , true , true, false, true, true, true),
        body: SingleChildScrollView(          
          child: Column(
            children: [
               SizedBox(height: 35,),
              Material(
                elevation: 5,
                child: Cmn_Toolbar(title_: 'FEEDBACK',key :  null, context: context, ),                
              ),

               Container(
                 width: double.infinity,
                 margin: EdgeInsets.only(left: 15, right: 15, top:170),
                 
                 child: Card(
                    elevation: 10,
                    shape:  RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(35.0)
                       ),
                   child: Wrap(
                     children: [
                       COMMON_WIDGETS().set_title_text('Rate Your Experience'),
                       SlideTransition(
                         position:  _animation_1,
                         child: Align(
                           alignment: Alignment.center,
                           child: RatingBar.builder(
                            initialRating: 3,
                             minRating: 1,
                            direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                              itemBuilder: (context, _) => Icon(
                              Icons.star,
                                  color: Colors.amber,
                               ),
                               onRatingUpdate: (rating) {
                                       print(rating);
                                 },
                                ),
                         ),
                       ),
                        COMMON_WIDGETS().set_title_text('Feedback'),
                        Text_Field(''),
                        Login_btn(context)

                     ],
                   ),
                 ),
               )


            ],
          ),
        ),
     );
   }

 
 Widget Text_Field(String hint){
    return Container(
      height: 150,
      margin: EdgeInsets.only(left:20.0, right: 20.0, bottom: 20.0),    
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(25.0)
      ) ,
      child: TextField(
        decoration:  InputDecoration(
           contentPadding: EdgeInsets.only(left: 15),
            hintText: hint,hintStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          border: UnderlineInputBorder( borderSide: BorderSide.none,),    
        ),style: COMMON_WIDGETS.HT_CMN_STY ,        
      ),
    );
  }

 
  

 

   
Widget Login_btn(context){
 return InkWell(
      onTap: (){
           Navigator.push(context, MaterialPageRoute(builder: (context) =>  HISTORY_PAGE()  )) ;
       },
      child: Container(
         height: 50,
         width: double.infinity,
        margin: EdgeInsets.only(left:20.0, right: 20.0, top: 20.0, bottom: 20.0), 
        decoration: Common_Style.primary_blue_btn_Decoration() ,
        child: Center(child: Text('SUBMIT', style: TextStyle(color: Colors.white, 
        fontWeight: FontWeight.normal, fontSize: 16, fontFamily: 'M_Medium'), )),),
    ); 
}


 }