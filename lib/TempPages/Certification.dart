import 'package:elearn/Common/Cmn_Widgets.dart';
import 'package:elearn/Common/Toolbar.dart';
import 'package:elearn/Common/TestDrawer.dart';
import 'package:elearn/intro/LoginScreen.dart';
import 'package:elearn/mainFrame/DashBoard.dart';
import 'package:flutter/material.dart';



class CertificationPage extends StatefulWidget {
 
  @override
  _CertificationPage createState() => _CertificationPage();
}


 

class _CertificationPage extends State<CertificationPage> {



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
       onWillPop: _onBackPressed,
      child: Scaffold(
       drawer: new TestDrawer(true, true,  true ,false, true , true , true, true, true, true, true),
        body: Column(
          children: [
            SizedBox(height: 35,),
              Material(
                elevation: 5,
                child: Cmn_Toolbar(title_: 'CertificationPage',key :  null, context: context, ),
              ),
              SizedBox(height: 35,),

              Center(
                child: RaisedButton(
                  child: Text('Certification Detail'),
                  onPressed: (){
                  Navigator.push(context,
                   MaterialPageRoute(builder: (BuildContext context) => Certification_Detail()  ));
                }),  )
               
          ],
        ),
      
        
      ),
    );
  }


}



class Certification_Detail extends StatefulWidget {
 
  @override
  _Certification_DetailState createState() => _Certification_DetailState();
}

class _Certification_DetailState extends State<Certification_Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
               children: [
                 COMMON_WIDGETS().TB_WITH_TITLE('CERTIFICATION',context, MaterialPageRoute(builder: (context) => DashBoardPage() )),
                 SizedBox(height:  20 ,),
                 ListView.builder(
                   shrinkWrap: true,
                   itemCount: 4,
                   itemBuilder: (BuildContext context, int index){
                      return CERTIFICATION_ITEM_();
                 })

             ],
                  ),
          ) ,
      ) ,
    );
  }


   Widget CERTIFICATION_ITEM_(){
     return Card(
       margin: EdgeInsets.only(left: 10, right: 10, top: 12.5),
       elevation: 2.5,
      child: Container(
             margin: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
        child: Row(    
           children: [            
            
            Text('Name of the Course Name', style:  TextStyle(
              fontSize: 15,
              color: Colors.black, fontFamily: 'M_Medium'),), Spacer(),

            MaterialButton(
              onPressed: () {},
            color: Colors.green,
             textColor: Colors.white,
           child:  Image.asset('assets/icons/download.png' ,width: 20,  height: 20, color: Colors.white,),
  padding: EdgeInsets.all(10),
  shape: CircleBorder(),
) 

          ],
        ),
      ),
    );
   }

}