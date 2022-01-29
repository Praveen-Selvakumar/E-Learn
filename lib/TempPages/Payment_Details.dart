import 'package:animated_widgets/generated/i18n.dart';
import 'package:elearn/Common/Cmn_Widgets.dart';
import 'package:elearn/Common/CustomTextStyle.dart';
import 'package:elearn/Common/Toolbar.dart';
import 'package:elearn/Common/TestDrawer.dart';
import 'package:elearn/mainFrame/DashBoard.dart';
import 'package:flutter/material.dart';


 class Payment_Details extends StatefulWidget {
  
   @override
   _Payment_DetailsState createState() => _Payment_DetailsState();
 }
 
 class _Payment_DetailsState extends State<Payment_Details> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: SingleChildScrollView(
         child: SafeArea(
           child: Column(
             children: [
                COMMON_WIDGETS().TB_WITH_TITLE('PAYMENT DETAILS', context, MaterialPageRoute(builder: (context) => DashBoardPage())),
                SizedBox(height: 10,),
                PAY_RESPONSE_CARD(),
                SizedBox(height: 30,),
                TRANSACTION_INFO()


                
             ],
           ) ,
         ),
       ) ,
     );
   }

   Widget PAY_RESPONSE_CARD(){
     return Container(
       margin: EdgeInsets.only(left: 15, right: 15, top:  10),
       child: Card(
         elevation: 5,
         child: Container(
           margin: EdgeInsets.only(top: 80,bottom: 30),
           width: double.infinity ,
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Text(' \u20B9  2000 ', style: TextStyle(color: Colors.black, fontSize: 18,
                 fontWeight: FontWeight.bold,             
                fontFamily: 'M_Medium'),),
                 SizedBox(height: 20,), 
                Text('Successful Transaction', style: TextStyle(color: Colors.orange, fontSize: 16,
                 fontWeight: FontWeight.normal,             
                fontFamily: 'M_Medium'),),

             ],
           ),
         ),
       ),
     );
   }

   Widget TRANSACTION_INFO(){
     return Container(
       margin: EdgeInsets.only(left: 15, right: 15, top:  10),
       child: Card(
         elevation: 5,
         child: Container(
           margin: EdgeInsets.only(top: 20,bottom: 20, left: 10, right: 10 ),
           width: double.infinity ,
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Align(
                 alignment: Alignment.topLeft,
                 child: Text(' Transaction Information', style:
                  TextStyle(color: Colors.black, fontSize: 16,
                   fontWeight: FontWeight.bold,             
                  fontFamily: 'M_Medium'),),
               ),
               ROW_ITEM('Amount', '\u20B9  2000'),
               ROW_ITEM('Pay Type', 'Card'),
               ROW_ITEM('Transaction Date', '12-12-2022'),
               ROW_ITEM('Phoner', '1234567890'),

                

             ],
           ),
         ),
       ),
     );
   }

   Widget ROW_ITEM(String hint_, String res_){
     return Container(
       margin: EdgeInsets.only(top: 10, left: 5),
       child: Row(
         children: [
           Text('$hint_', style: TextStyle(
             color: Colors.grey[400], fontSize: 14, fontWeight: FontWeight.bold, fontFamily: 'M_Light' ),),
           Spacer(),
             Text(' $res_ ', style: TextStyle(
             color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold, fontFamily: 'M_Light' ),),

         ],
       ),
     );
   } 

 }


 class Payment_History extends StatefulWidget {
  
   @override
   _Payment_HistoryState createState() => _Payment_HistoryState();

 }
 
 class _Payment_HistoryState extends State<Payment_History> {
   @override
   Widget build(BuildContext context) {

    List<String> lists_ =  [ "12-09-2021", "12-10-2021", "12-11-2021", "12-12-2021"];

     return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
             child: Column(
               children: [
                    COMMON_WIDGETS().TB_WITH_TITLE('PAYMENT HISTORY', context, MaterialPageRoute(builder: (context) => DashBoardPage())),
                    SizedBox(height: 15,),
                  COMMON_WIDGETS().DROP_DOWN('Date',lists_ ),SizedBox(height: 20,),

                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index){
                            return PAYMENT_ITEM_();
                    })
 
               ],
             ) ,
          ),
        ),
     );

   }

   Widget PAYMENT_ITEM_(){
     return InkWell(
       onTap: (){
         Navigator.push(context, MaterialPageRoute(builder: (context) => Payment_Details() ));
       },
       child: Card(
        margin: EdgeInsets.only(left: 10, right: 10, top: 15),
        child: Container(
          margin:  EdgeInsets.only(left: 10, right: 10, top: 12.5, bottom: 12.5),
          child: Column(
            children: [
               ITEM_ONE(),SizedBox(height: 10,),ITEM_TWO()
            ],
          ),
        ),
       ),
     );
   }

  Widget ITEM_ONE(){
    return Row(
      children: [
        Text('Reason of the Payment title', style:  Common_Style.style_2 ,), Spacer(),
        Text(' \u20B9  2000 ', style:  Common_Style.style_2 ,)
      ],
    );
  }
 
  Widget ITEM_TWO(){
    return Row(
      children: [
          Text( ' 12-10-2021 ', style:  Common_Style.sty_grey_bold ,), Spacer(),
        Text(' Success ', style:  Common_Style.sty_green_bold ,)
      ],
    );
  }

 }