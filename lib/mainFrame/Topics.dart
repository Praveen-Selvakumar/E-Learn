import 'package:elearn/Common/TestDrawer.dart';
import 'package:elearn/Common/Toolbar.dart';
import 'package:elearn/mainFrame/Chapter.dart';
import 'package:elearn/mainFrame/DashBoard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:ripple_animation/ripple_animation.dart';



class TopicsPage extends StatefulWidget {
  const TopicsPage({ Key? key, 
  required this.title_,
  }) : super(key: key);

  final String title_ ;
     
  @override
  _TopicsPageState createState() => _TopicsPageState();
}

 List<String> images = ['assets/topics/t_1.png', 'assets/topics/t_2.png', 'assets/topics/t_3.png', 'assets/topics/t_1.png'];
 List<String> lists = ['01','02','03','04'];

class _TopicsPageState extends State<TopicsPage> {

   final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();


Future<bool> _onBackPressed() async {
    // Your back press code here...
    Navigator.push(context, MaterialPageRoute(builder: (context) => DashBoardPage()  ));
     //Flutoaas.showToast(context, "Back presses");
    print('pressed');
    return true;
}


  @override
  Widget build(BuildContext context){
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        key: _scaffoldKey,
        drawer: new TestDrawer(true, true, true, true , true , true , true, true, true, false, true ),
        body: Column(
           children: [ 
             SizedBox(height: 40,),
              Material(
                elevation: 5,
                child: Cmn_Toolbar(title_: 'Topics', key :_scaffoldKey, context: context, ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: InkWell(
                  onTap: () => _scaffoldKey.currentState!.openDrawer(),
                  child: Row(
                    children: [
                      Text('Chapter : ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16, fontFamily: 'M_Medium',color: Colors.orange[400]) ,),
                      Text('Name of the chapter',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16, fontFamily: 'M_Medium',color: Colors.black) ,),
                    ],
                  ),
                ), ),
                  //Listing Vedios 
                  
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: List_Animation (images, lists))        
                
                     
           ],
        ),
      ),
    );
  }


  Widget List_Animation(List<String> images, List<String> lists){
        return AnimationLimiter(
          child: ListView.builder(
            shrinkWrap: true,
             itemCount: images.length,
            itemBuilder:(BuildContext context , int index){
                return Container(
                  margin: EdgeInsets.only(top: 2.5, bottom: 2.5 ),
                  child: AnimationConfiguration.staggeredList(
              position: index,
              duration: const Duration(milliseconds: 2000),            
              child: FadeInAnimation(
                  child: SlideAnimation(
                    child: ScaleAnimation(
                      child: InkWell(
                        onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => TopicsPage(title_: 'Title', key:  null, )) );
                        },
                        child: card_(lists,images,index) 
                      ),
                    ),
                  ),
              ),
            ),
                );
          } )
           );
  }


  
  
  Widget card_(List<String> lists, List<String> images, int index){
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
           Container(
             margin: EdgeInsets.only(left: 20,top: 17.5),
             child: RippleAnimation(
                repeat: true,
                  color: Colors.blue,
                  minRadius: 25,
                  ripplesCount: 2,
               child: Image.asset('assets/orange_circle.png', width: 42.5, height: 42.5,))),
            Container(
             margin: EdgeInsets.only(left: 22,top: 18.5),
             child: Image.asset('assets/vedio_player_icon.png', width: 40, height: 40,)),  
           ],           
           ),
          SizedBox(width: 25,),
          Text('Topic ${lists[index]}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16, fontFamily: 'M_Medium',color: Colors.black) ,),

        ],
      ),
    );
  }


  
}