import 'package:elearn/Common/Cmn_Widgets.dart';
import 'package:elearn/Common/CustomTextStyle.dart';
import 'package:elearn/mainFrame/DashBoard.dart';
import 'package:flutter/material.dart';



class Notification_Page extends StatefulWidget {
 
  @override
  _Notification_PageState createState() => _Notification_PageState();
}

class _Notification_PageState extends State<Notification_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
               COMMON_WIDGETS().TB_WITH_TITLE('NOTIFICATIONS', context, MaterialPageRoute(builder: (context) => DashBoardPage())),
               Align(
                 alignment: Alignment.topRight ,
                 child: Container(
                   margin: EdgeInsets.only(right: 20, top: 15),
                   child: Text('Clear all', style: TextStyle(color: Colors.red, fontSize: 16,
                   fontWeight: FontWeight.bold, fontFamily: 'M_Medium' ),),
                 ),
               ),
               ListView.builder(
                 shrinkWrap: true,
                 itemCount: 4 ,
                 itemBuilder: (BuildContext context,int index){                        
                        return Container(
                          margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                         child: NOT_ITEM()
                        );

               })
                 
                          

              ],
            )
          ),
      ) 
    );
  }

  Widget NOT_ITEM(){
    return Card(
      child: Container(
             margin: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
        child: Column(    
                children: [            
            Row(
              children: [
                   Text('Title', style: Common_Style.style_2,), Spacer(),
                    Image.asset('assets/icons/delete.png', width: 20, height: 20,color: Colors.red,),
              ],
            ),SizedBox(height: 5,),
            Align(
              alignment: Alignment.topLeft,
              child: Text('12-10-2021', style:  TextStyle(color: Colors.grey[300], fontSize: 13, fontFamily: 'M_Medium') ,)),
          SizedBox(height: 5,),
           Align(
              alignment: Alignment.topLeft,
             child: Text('Notification Dummy Text here for Demo', style:  TextStyle(color: Colors.grey, fontSize: 13, fontFamily: 'M_Medium') ,))
           
          ],
        ),
      ),
    );
  }

}