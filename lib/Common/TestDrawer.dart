 
 import 'package:elearn/ExtraPages/FEEDBACK.dart';
import 'package:elearn/ExtraPages/HISTORY.dart';
import 'package:elearn/ExtraPages/QUIZ_RESULT.dart';
import 'package:elearn/TempPages/Certification.dart';
import 'package:elearn/TempPages/Payment_Details.dart';
import 'package:elearn/TempPages/Privacy.dart';
import 'package:elearn/TempPages/Quizzes.dart';
import 'package:elearn/intro/Settings_Page.dart';
import 'package:elearn/mainFrame/Chapter.dart';
import 'package:elearn/mainFrame/DashBoard.dart';
import 'package:elearn/mainFrame/Topics.dart';
import 'package:elearn/mainFrame/VIDEO_PLAYER.dart';
import 'package:flutter/material.dart';
import 'package:ripple_animation/ripple_animation.dart';
import 'package:video_player/video_player.dart';
import 'package:elearn/intro/Settings_Page.dart';




 


class TestDrawer extends StatefulWidget {

 bool pressAttention_1   ;
 bool pressAttention_2   ;
 bool pressAttention_3   ;
 bool pressAttention_4   ;
 bool pressAttention_5   ;
 bool pressAttention_6   ;
 bool pressAttention_7   ;
 bool pressAttention_8   ;
 bool pressAttention_9   ;
 bool pressAttention_10  ;
 bool pressAttention_11  ;
 

      
   TestDrawer(   this.pressAttention_1, this.pressAttention_2, this.pressAttention_3,
    this.pressAttention_4, this.pressAttention_5, this.pressAttention_6,
    this.pressAttention_7,this.pressAttention_8, this.pressAttention_9 , 
    this.pressAttention_10, this.pressAttention_11);
 
  @override
  _TestDrawerState createState() => _TestDrawerState();
}

class _TestDrawerState extends State<TestDrawer> {
 



 


  @override
  Widget build(BuildContext context) {
    return Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
              DrawerHeader(
               decoration: BoxDecoration(
                color: Color(0xffd3d3d3),
              ),
              child:  Align(
                alignment: Alignment.topLeft,                
                child: Column(
                  children: [
                    RippleAnimation(
                      repeat: true,
                  color: Colors.blue,
                  minRadius: 45,
                  ripplesCount: 2,
                      child: CircleAvatar(
                         radius: 40,
                         backgroundColor: Colors.grey[50],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text('Name', style:  TextStyle(color: Colors.black, fontFamily: 'M_Medium', fontSize: 18, fontWeight: FontWeight.bold ),),
                    Text('info@mail.com', style:  TextStyle(color: Colors.grey, fontFamily: 'M_Medium', fontSize: 15, fontWeight: FontWeight.normal ),)
                  ],
                ),
              )
            ),
             SingleChildScrollView(
               child: Column(
                children: [            
                    
                setItem1('Dashboard', 'assets/drawer/Dashboard_icon.png' , Colors.grey  ),
                setItem2('Courses', 'assets/drawer/Courses_icon.png', Colors.grey),
                setItem3('Quizzes', 'assets/drawer/Quizzes_icon.png', Colors.grey),
                setItem4('Certification', 'assets/drawer/Certification_icon.png', Colors.grey),
                setItem5('Payment History', 'assets/drawer/PH_icon.png', Colors.grey),
                setItem6('Settings', 'assets/drawer/Settings_icon.png', Colors.grey),
                setItem7('Privacy', 'assets/drawer/Privacy_icon.png', Colors.grey),
                SizedBox(height: 30,),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 0.5,
                  width: double.infinity,
                  color: Colors.grey,
                ),
                setItem_('Log Out', 'assets/drawer/logout.png', Colors.red),
                setItem8('Feed Back', 'assets/drawer/feed_back.png', Colors.grey),
                setItem9('Quizze result', 'assets/drawer/Quizzes_icon.png', Colors.grey),
                setItem10('Topics', 'assets/drawer/topics.png', Colors.grey),
                setItem11('Video Player', 'assets/vedio_player_icon.png', Colors.grey),
             
             
                ],
                         ),
             ),
          ],
        ),
      );
  }



   Widget setItem1(String txt, String image_assets, MaterialColor clr  ){
       return Container(
         margin: EdgeInsets.only(left: 20, top: 30),
         child: Row(
            children: [
              Image.asset(image_assets,   color:  widget.pressAttention_1 ? Colors.grey : Colors.orange,),SizedBox(width: 20,),
              InkWell(
                onTap: (){
                  setState(() {
                    widget.pressAttention_1  = !widget.pressAttention_1 ;
                   Navigator.push(context, MaterialPageRoute(builder:  (context) => DashBoardPage() ) );
                  });
                },
                child: Text(txt, style:  TextStyle( color:   widget.pressAttention_1 ? Colors.grey : Colors.orange  ,
                 fontSize: 15, fontFamily: 'M_Medium')  , ),
              ),  ],
         ),
       );
  }

   Widget setItem2(String txt, String image_assets, MaterialColor clr  ){
       return Container(
         margin: EdgeInsets.only(left: 20, top: 30),
         child: Row(
            children: [
              Image.asset(image_assets,   color:  widget.pressAttention_2 ? Colors.grey : Colors.orange,),SizedBox(width: 20,),
              Ink(
                child: InkWell(
                onTap: () {
                  setState(() {
                    widget.pressAttention_2  = !widget.pressAttention_2 ;
              Navigator.push(context, MaterialPageRoute(builder:  (context) => ChapterPage () ) );
                  });                    

                },
                  child: Text(txt, style:  TextStyle( color:   widget.pressAttention_2 ? Colors.grey : Colors.orange  ,
                   fontSize: 15, fontFamily: 'M_Medium')  , ),
                ),
              ),  ],
         ),
       );
  }


  Widget setItem3(String txt, String image_assets, MaterialColor clr  ){
       return Container(
         margin: EdgeInsets.only(left: 20, top: 30),
         child: Row(
            children: [
              Image.asset(image_assets,   color:   widget.pressAttention_3 ? Colors.grey : Colors.orange,),SizedBox(width: 20,),
              InkWell(
                onTap: (){
                  setState(() {
                    widget.pressAttention_3  = !widget.pressAttention_3 ;
                Navigator.push(context, MaterialPageRoute(builder:  (context) => QuizzesPage () ) );
                  });
                 },
                child: Text(txt, style:  TextStyle( color:   widget.pressAttention_3 ? Colors.grey : Colors.orange  ,
                 fontSize: 15, fontFamily: 'M_Medium')  , ),
              ),  ],
         ),
       );
  }


  Widget setItem4(String txt, String image_assets, MaterialColor clr  ){
       return Container(
         margin: EdgeInsets.only(left: 20, top: 30),
         child: Row(
            children: [
              Image.asset(image_assets,   color:   widget.pressAttention_4 ? Colors.grey : Colors.orange,),SizedBox(width: 20,),
              InkWell(
                onTap: (){
                   setState(() {
                      widget.pressAttention_4  = !widget.pressAttention_4 ;
                   Navigator.push(context, MaterialPageRoute(builder:  (context) => CertificationPage () ) );

                   });
                },
                child: Text(txt, style:  TextStyle( color:   widget.pressAttention_4 ? Colors.grey : Colors.orange  ,
                 fontSize: 15, fontFamily: 'M_Medium')  , ),
              ),  ],
         ),
       );
  }




  Widget setItem5(String txt, String image_assets, MaterialColor clr  ){
       return Container(
         margin: EdgeInsets.only(left: 20, top: 30),
         child: Row(
            children: [
              Image.asset(image_assets,   color:   widget.pressAttention_5 ? Colors.grey : Colors.orange,),SizedBox(width: 20,),
              InkWell(
                 onTap: (){
                   setState(() {
                      widget.pressAttention_5  = !widget.pressAttention_5 ;
                   Navigator.push(context, MaterialPageRoute(builder:  (context) => Payment_History () ) );

                   });
                 },
                child: Text(txt, style:  TextStyle( color:   widget.pressAttention_5 ? Colors.grey : Colors.orange  ,
                 fontSize: 15, fontFamily: 'M_Medium')  , ),
              ),  ],
         ),
       );
  }


  Widget setItem6(String txt, String image_assets, MaterialColor clr  ){
       return Container(
         margin: EdgeInsets.only(left: 20, top: 30),
         child: Row(
            children: [
              Image.asset(image_assets,   color:   widget.pressAttention_6 ? Colors.grey : Colors.orange,),SizedBox(width: 20,),
              InkWell(
                onTap: () {
                  setState(() {
                      widget.pressAttention_6 = !widget.pressAttention_6 ;
                   Navigator.push(context, MaterialPageRoute(builder:  (context) => Settings_Page () ) );
                   });
                },
                child: Text(txt, style:  TextStyle( color:   widget.pressAttention_6 ? Colors.grey : Colors.orange  ,
                 fontSize: 15, fontFamily: 'M_Medium')  , ),
              ),  ],
         ),
       );
  }

  Widget setItem7(String txt, String image_assets, MaterialColor clr  ){
       return Container(
         margin: EdgeInsets.only(left: 20, top: 30),
         child: Row(
            children: [
              Image.asset(image_assets,   color:   widget.pressAttention_7 ? Colors.grey : Colors.orange,),SizedBox(width: 20,),
              InkWell(
                 onTap: () 
                 {
                   setState(() {
                      widget.pressAttention_7  = !widget.pressAttention_7 ;
                   Navigator.push(context, MaterialPageRoute(builder:  (context) => PrivacyPage () ) );

                   });
                 },  
                child: Text(txt, style:  TextStyle( color:   widget.pressAttention_7 ? Colors.grey : Colors.orange  ,
                 fontSize: 15, fontFamily: 'M_Medium')  , ),
              ),  ],
         ),
       );
  }

  Widget setItem8(String txt, String image_assets, MaterialColor clr  ){
       return Container(
         margin: EdgeInsets.only(left: 20, top: 30),
         child: Row(
            children: [
              Image.asset(image_assets,   color:   widget.pressAttention_8 ? Colors.grey : Colors.orange,),SizedBox(width: 20,),
              InkWell(
                 onTap: () 
                 {
                   setState(() {
                      widget.pressAttention_8  = !widget.pressAttention_8 ;
                   Navigator.push(context, MaterialPageRoute(builder:  (context) => FEED_BACK_PAGE() ) );

                   });
                 },  
                child: Text(txt, style:  TextStyle( color:   widget.pressAttention_8 ? Colors.grey : Colors.orange  ,
                 fontSize: 15, fontFamily: 'M_Medium')  , ),
              ),  ],
         ),
       );
  }

    Widget setItem9(String txt, String image_assets, MaterialColor clr  ){
       return Container(
         margin: EdgeInsets.only(left: 20, top: 30),
         child: Row(
            children: [
              Image.asset(image_assets,   color:   widget.pressAttention_9 ? Colors.grey : Colors.orange,),SizedBox(width: 20,),
              InkWell(
                 onTap: () 
                 {
                   setState(() {
                      widget.pressAttention_9  = !widget.pressAttention_9 ;
                   Navigator.push(context, MaterialPageRoute(builder:  (context) => QUIZ_RESULT_PAGE() ) );

                   });
                 },  
                child: Text(txt, style:  TextStyle( color:   widget.pressAttention_9 ? Colors.grey : Colors.orange  ,
                 fontSize: 15, fontFamily: 'M_Medium')  , ),
              ),  ],
         ),
       );
  }

    Widget setItem10(String txt, String image_assets, MaterialColor clr  ){
       return Container(
         margin: EdgeInsets.only(left: 20, top: 30),
         child: Row(
            children: [
              Image.asset(image_assets,   color:   widget.pressAttention_10 ? Colors.grey : Colors.orange,),SizedBox(width: 20,),
              InkWell(
                 onTap: () 
                 {
                   setState(() {
                      widget.pressAttention_10  = !widget.pressAttention_10 ;
                   Navigator.push(context, MaterialPageRoute(builder:  (context) => TopicsPage(key: null, title_: 'TOPICS',) ) );

                   });
                 },  
                child: Text(txt, style:  TextStyle( color:   widget.pressAttention_10 ? Colors.grey : Colors.orange  ,
                 fontSize: 15, fontFamily: 'M_Medium')  , ),
              ),  ],
         ),
       );
  }


  Widget setItem11(String txt, String image_assets, MaterialColor clr  ){
       return Container(
         margin: EdgeInsets.only(left: 20, top: 30, bottom: 20),
         child: Row(
            children: [
              Image.asset(image_assets,width: 20, height: 20,  
               color:   widget.pressAttention_11 ? Colors.grey : Colors.orange,),SizedBox(width: 20,),
              InkWell(
                 onTap: () 
                 {
                   setState(() {
                      widget.pressAttention_11  = !widget.pressAttention_11 ;
                   Navigator.push(context, 
                   MaterialPageRoute(builder:  (context) =>  LESSONS()   ) );

                   });
                 },  
                child: Text(txt, style:  TextStyle( color:   widget.pressAttention_11 ? Colors.grey : Colors.orange  ,
                 fontSize: 15, fontFamily: 'M_Medium')  , ),
              ),  ],
         ),
       );
  }


  

  Widget setItem_(String txt, String image_assets, MaterialColor clr  ){
       return InkWell(
          child: Container(
           margin: EdgeInsets.only(left: 20, top: 30),
           child: InkWell(
             onTap: () {},
             child: Row(
                children: [
                  Image.asset(image_assets,   color:  Colors.red),SizedBox(width: 20,),
                  Text(txt, style:  TextStyle( color:   Colors.red  ,
                   fontSize: 15, fontFamily: 'M_Medium')  , ),  ],
             ),
           ),
         ),
       );
  }

  
}