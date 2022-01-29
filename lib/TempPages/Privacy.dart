import 'package:elearn/Common/Toolbar.dart';
import 'package:elearn/Common/TestDrawer.dart';
import 'package:elearn/mainFrame/DashBoard.dart';
import 'package:flutter/material.dart';



class PrivacyPage extends StatefulWidget {
 
  @override
  _PrivacyPage createState() => _PrivacyPage();
}

class _PrivacyPage extends State<PrivacyPage> {

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
      onWillPop: _onBackPressed ,
      child: Scaffold(
       drawer: new TestDrawer(true, true, true, true , true , true , false, true, true, true, true),
    
        body: Column(
          children: [
            SizedBox(height: 35,),
              Material(
                elevation: 5,
                child: Cmn_Toolbar(title_: 'Privacy Page',key :  null, context: context, ),
              ),
               SizedBox(height: 35,),
              Align(
                alignment: Alignment.center,
                child: Text('Privacy Page'),
              )
          ],
        ),
    
        
      ),
    );
  }
}