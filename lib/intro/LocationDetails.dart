import 'package:elearn/Common/CustomTextStyle.dart';
import 'package:elearn/Common/Primary_Blue_Btn.dart';
import 'package:elearn/Common/Temp_Bg.dart';
import 'package:elearn/intro/LoginScreen.dart';
import 'package:elearn/intro/ParentRegistration.dart';
import 'package:flutter/material.dart';


class Location_Details_Page extends StatefulWidget {
  @override
  _Location_Details_PageState createState() => _Location_Details_PageState();
}

class _Location_Details_PageState extends State<Location_Details_Page> with TickerProviderStateMixin {


   
  String _SelectdType = '';
  List<String> _cities = ['Madurai','chennai', 'Thirchi','Sivagangai','thoothukudi','Kovilpatti','Ramnadu']; 
  List<String> _schools = ['DMHSS','KESWICK PUBLIC SCHOOL','Queen Mira International School','Royal Vidyalaya Matric Hr. Sec School','RC School'];
  List<String> _states = ['Tamil Nadu', 'Andhra','Telugana', 'Sri lanka', 'Karnataka', 'Goa' ];

  late Animation<Offset> _animation_1, _animation_2, _animation_3     ; 
   late  AnimationController _controller_1, _controller_2, _controller_3   ;
   
  //OPACITY
  double opacity = 0.0;

  changeOpacity() {
  Future.delayed(Duration(seconds: 3), () {
    setState(() {
      opacity = opacity == 0.0 ? 1.0 : 0.0;
    });
  });
}



  Widget Text_Drop_Down(String hint,List<String> lists){
    return Container(
      width: double.infinity,
      height: 50,
      margin: EdgeInsets.only(left:20.0, right: 20.0, top: 0.0),    
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(25.0)
      ) ,
      child:  DropdownButtonFormField<String>(    
        isExpanded: true,             
         decoration: InputDecoration(
           contentPadding: EdgeInsets.only(left: 15, right :15),
           border: UnderlineInputBorder( borderSide: BorderSide.none,),                 
         ),       
         
         hint: Text(hint, style: TextStyle(
           color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold
         ),),         
         icon: Image.asset('assets/down_arrow.png',width: 15,height: 15,),
         items: lists.map((String value) {
         return DropdownMenuItem<String>(
         value: value,
         child: new Text(value),
       );
      }).toList(),
     onChanged: (_) {},
),
      
    );
  }

   
   //INITIAL STATE
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



      
     //CONTROLLER_TWO
      _controller_2 = AnimationController(
        duration: const Duration(milliseconds: 1600),
        vsync: this,
      )..forward();
      _animation_2 = Tween<Offset>(
        begin: const Offset(0.7, 0.0),
        end: const Offset(0.0, 0.0),
      ).animate(CurvedAnimation(
        parent: _controller_2,
        curve: Curves.easeInCubic,
      ));


      
     //CONTROLLER_THREE
      _controller_3 = AnimationController(
        duration: const Duration(milliseconds: 1700),
        vsync: this,
      )..forward();
      _animation_3 = Tween<Offset>(
        begin: const Offset(0.7, 0.0),
        end: const Offset(0.0, 0.0),
      ).animate(CurvedAnimation(
        parent: _controller_3,
        curve: Curves.easeInCubic,
      ));
          
      changeOpacity() ;


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
    return Scaffold(
       body: WillPopScope(
         onWillPop: _onBackPressed,
         child: Stack(
           children:[
             Blue_Bg(),
             Center(
               child: Hero(
                 tag: 'title',
                 child: Container(
                   width: double.infinity,
                   margin: EdgeInsets.all(15),
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(50.0),color: Colors.transparent
                   ), 
                   child: Card(
                     elevation: 4,
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(35.0)
                     ),
                     child: Wrap(
                       children: [
                         Container(
                           margin: EdgeInsets.only(left: 20, top: 35),
                           child: Text('Hi Suresh \nYou are a smart 14 years 0ld boy!',
                           style: Common_Style.black_txt_bold ,),
                         ),
                         Container(
                          margin: EdgeInsets.only(left: 20, top: 15),
                          child: Text('Your Location',style: Common_Style.style_1,),
                         ),
                         SlideTransition(
                           position: _animation_1,
                           child: Container(
                               margin: EdgeInsets.only(top: 30),
                               child: Text_Drop_Down('State',_states)),
                         ),
                         SlideTransition(
                          position: _animation_2,
                           child: Container(
                               margin: EdgeInsets.only(top: 10),
                               child: Text_Drop_Down('City',_cities)),
                         ), 
                         SlideTransition(
                           position: _animation_3,          
                           child: Container(
                               margin: EdgeInsets.only(top: 10),
                               child: Text_Drop_Down('School',_schools)),
                         ),  
                         Container(
                            margin: EdgeInsets.only(left:15,right: 15,top: 15,bottom: 40),
                            child: SizedBox(
                              width: double.infinity,
                              height: 65,
                              child: AnimatedOpacity(
                                opacity:  opacity,
                           duration: Duration(seconds: 1),                                
                                child: Primary_Btn('SUBMIT',MaterialPageRoute(builder: (context) => Parent_Register_Page() )))))     
                       ],
                     ),
                   ),
                   ),
               ))
           ]          
             
         ),
       ),
    );
  }
}