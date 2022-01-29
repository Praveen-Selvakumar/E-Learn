import 'package:animated_widgets/animated_widgets.dart';
import 'package:elearn/intro/Notification.dart';
import 'package:flutter/material.dart';

class Cmn_Toolbar extends StatelessWidget {
  Cmn_Toolbar({ required this.title_,  this.key, required this.context });

  var key;
  String  title_ ;
  BuildContext context ;

  Widget Not_Badge(){
    return Stack(
      children: [ 
            ShakeAnimatedWidget(
              duration: Duration(milliseconds: 250),
                shakeAngle: Rotation.deg(z: 40),
                  curve: Curves.linear,
              child: new IconButton(icon: Image.asset('assets/not_icon.png',width: 25,height: 25,),
               onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => Notification_Page() ));
                 }),
            ),
            new Positioned(
                  right: 11,
                  top: 11,
                  child: new Container(
                    padding: EdgeInsets.all(4),
                    decoration: new BoxDecoration(
                      color: Colors.orange[400],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    constraints: BoxConstraints(
                      minWidth: 14,
                      minHeight: 14,
                    ),
                    child: Text(
                       '10',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
      ],     
    );
  }

  @override
  Widget build(BuildContext context) {
     return SizedBox( 
             height: 50,
             width: double.infinity,     
             child: Container(
               margin: EdgeInsets.only(left:20, right: 10),
               child: Row(                 
                children: [
                  InkWell(
                    onTap: ()  {
                     Scaffold.of(context).openDrawer();
                    }, 
                    child: Image.asset('assets/menu.png',width: 20,height: 20,)),Spacer(),
                  Text(title_,style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),Spacer(),
                  Not_Badge(), 
                ],                 
            ),
             ),
          
       );
  }
}

class MyDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Drawer(
       child: Column(
         children: [
           Text('10'),
           Text('20'),
           Text('30'),Text('40'),Text('50'),Text('60'),Text('70'),Text('80'),
         ],
       ),
     );
  }
}



 