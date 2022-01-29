import 'package:elearn/Common/Toolbar.dart';
import 'package:elearn/Common/TestDrawer.dart';
import 'package:elearn/intro/LoginScreen.dart';
import 'package:elearn/mainFrame/DashBoard.dart';
import 'package:flutter/material.dart';



class ChapterPage extends StatefulWidget {
   

  @override
  _ChapterPageState createState() => _ChapterPageState();
}

class _ChapterPageState extends State<ChapterPage> {

  Future<bool> _onBackPressed() async {
    // Your back press code here...
    Navigator.push(context, MaterialPageRoute(builder: (context) => DashBoardPage()  ));
     //Flutoaas.showToast(context, "Back presses");
    print('pressed');
    return true;
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      drawer: new TestDrawer(true, false, true, true , true , true , true, true, true, true, true),
      body: WillPopScope(
        onWillPop: _onBackPressed,
        child: Column(
          children: [
            SizedBox(height: 40,),
              Material(
                elevation: 5,
                child: Cmn_Toolbar(title_: 'CHAPTER', key : null, context: context, ),
              ),
              //ListView Builder
              ListView.builder(
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder:  (BuildContext context , int index){
                  List<String> images = ['assets/topics/t_1.png', 'assets/topics/t_2.png', 'assets/topics/t_3.png', 'assets/topics/t_1.png'];
                      List<String> lists = ['01','02','03','04'];
                  if(index % 2 == 0){
                       return Container(
                        margin: EdgeInsets.only(left:15, right: 15, bottom: 15),
                        child: card_left(lists,images,index));
                  }else{
                    return Container(
                        margin: EdgeInsets.only(left:15, right: 15, bottom: 15),
                        child: card__right(lists,images,index));
                  }
                })            
          ],
        ),
      ),
    );
  }
 
 Widget card__right(List<String> lists, List<String> images, int index){
    return Card( 
       shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.grey, width: 0.2),
          borderRadius: BorderRadius.circular(10),
        ),      
      elevation: 2,
      child: Row(
         mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
              margin: EdgeInsets.only(right: 0, top: 0),
              child: Text('Topic ${lists[index]}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16, fontFamily: 'M_Medium',color: Colors.black) ,)),   
                        
           Image.asset(images[index], width: 100, height: 85,),
         /* Stack(
            children: [ 
            Container(
              margin: EdgeInsets.only(right: 70, top: 20),
              child: Text('Topic ${lists[index]}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16, fontFamily: 'M_Medium',color: Colors.black) ,)),   
           Image.asset(images[index], width: 100, height: 85,),
          /* Container(
             margin: EdgeInsets.only(left: 20,top: 17.5),
             child: Image.asset('assets/orange_circle.png', width: 42.5, height: 42.5,)),
            Container(
             margin: EdgeInsets.only(left: 22,top: 18.5),
             child: Image.asset('assets/vedio_player_icon.png', width: 40, height: 40,)), */ 
           ],           
           ),*/
          
         

        ],
      ),
    );
  }


  Widget card_left(List<String> lists, List<String> images, int index){
    return Card( 
       shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.grey, width: 0.2),
          borderRadius: BorderRadius.circular(10),
        ),      
      elevation: 2,
      child: Row(
        children: [
          Stack(
            children: [              
           Image.asset(images[index], width: 100, height: 85,),
          /*Container(
             margin: EdgeInsets.only(left: 20,top: 17.5),
             child: Image.asset('assets/orange_circle.png', width: 42.5, height: 42.5,)),
            Container(
             margin: EdgeInsets.only(left: 22,top: 18.5),
             child: Image.asset('assets/vedio_player_icon.png', width: 40, height: 40,)), */ 
           ],           
           ),
          SizedBox(width: 0,),
          Text('Topic ${lists[index]}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16, fontFamily: 'M_Medium',color: Colors.black) ,),

        ],
      ),
    );
  }
  

}