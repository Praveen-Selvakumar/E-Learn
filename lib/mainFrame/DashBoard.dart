import 'dart:ffi';

import 'package:elearn/Common/Toolbar.dart';
import 'package:elearn/Common/TestDrawer.dart';
import 'package:elearn/intro/LoginScreen.dart';
import 'package:elearn/mainFrame/Chapter.dart';
import 'package:elearn/mainFrame/Topics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:ripple_animation/ripple_animation.dart';



class DashBoardPage extends StatefulWidget {
  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  List<String> images = ['assets/dash_board/courses.png', 'assets/dash_board/quiz.png','assets/dash_board/certification.png', 
                         'assets/dash_board/payment_his.png'];

  List<String> lists = ['Course','Quizzes','Certification','Payment History', ];

  Widget GridView_Animations(){
    return AnimationLimiter(
      child: GridView.count(
        crossAxisCount: 2,
        children: List.generate(
          images.length,
          (int index) {
            return AnimationConfiguration.staggeredGrid(
              position: index,
              duration: const Duration(milliseconds: 2000),
              columnCount: 2,
              child: ScaleAnimation(
                child: FadeInAnimation(
                  child:InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => TopicsPage(title_: 'Title', key:  null, )) );
                    },
                    child: Card(
                           elevation: 6,
                           //child: Image.asset(images[index], width: 100,height: 100,),
                         child: Column(
                           children: [
                                Image.asset(images[index], width: 120,height: 120,),
                                Text(lists[index], style: TextStyle(fontSize: 18, fontFamily: 'M_Medium',
                                fontWeight:  FontWeight.bold, color: Colors.black))                          
                           ],
                         )
                         ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }



  Widget profile_content(){
    return Stack(
      children: [
        Image.asset('assets/profile_bg.png'),
        Container(
          margin: EdgeInsets.only(left: 40, top: 30),
          child: Stack(
            children: [
              RippleAnimation(
                  repeat: true,
                  color: Colors.white,
                  minRadius: 50,
                  ripplesCount: 2,
                  child:  CircleAvatar(               
                 backgroundColor: Colors.blue[700],
                radius: 30.0,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/user_icon.png'),
                radius: 27.5,
                ),
                ), 
                  ),                 
            ],
          )          
        ),
        Container(
          margin: EdgeInsets.only(left: 115, top: 40),
          child:  setText('USER NAME', 20.0)),
         Container(
          margin: EdgeInsets.only(left: 115, top: 80),
          child: Row(
            children: [
               setText('Class - 2', 14), SizedBox(width: 10,), 
               Container(
                  height: 20,  
                  width: 1,
                  color:Colors.white),SizedBox(width: 10,),
               setText('Roll No - 123345', 14)   
            ],
          ) ),

      ],
    );
  }

  Widget setText(String txt , double size){
         return Text(txt, style:  TextStyle(color: Colors.white,
          fontFamily: 'M_Medium', fontSize: size , fontWeight: FontWeight.bold ),
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
     leading: new Icon(Icons.menu,color: Colors.green,);
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(      
        /*appBar: PreferredSize(preferredSize: Size(MediaQuery.of(context).size.width, 60+80 ),
        child: Cmn_Toolbar() ,),*/
        
        drawer: new TestDrawer(false, true, true, true , true , true , true, true, true, true, true ),
        body:  Column(
            children: [
              SizedBox(height: 35,),
              Material(
                elevation: 5,
                child: Cmn_Toolbar(title_: 'DashBoard',key :  null, context:  context, ),
              ),
              profile_content(),
              // Image.asset('assets/profile_bg.png'),
               Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 15, right: 15),
                    child: GridView_Animations()                 
                  ),
                ),                      
            ],
          ),
        
      ),
    );
  }
}

 