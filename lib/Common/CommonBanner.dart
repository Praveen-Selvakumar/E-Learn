import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'dart:convert';


 

class CommonBanner extends StatelessWidget{ 
  @override
  Widget build(BuildContext context) {

       /* List<NetworkImage> images_  = [  https://thumbs.dreamstime.com/b/education-icon-hand-innovative-online-e-learning-internet-technology-concept-webinar-knowledge-training-courses-skill-168577248.jpg,
         ] ;*/
    
     return    Container(
                  
                 ///margin: EdgeInsets.only(left: 10, right: 10 ,),            
                child: ClipRRect(
                 borderRadius : BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight:   Radius.circular(35),
                 ),                                                      
                 child: SizedBox(
                   height: 240,
                   width: double.infinity,
                   child: Carousel(  
                      dotSize: 4.0,
                       dotSpacing: 15.0,
                       dotColor: Colors.lightGreenAccent,
                       indicatorBgPadding: 5.0,
                       dotBgColor: Colors.purple.withOpacity(0.5),
                       borderRadius: false,
                       moveIndicatorFromBottom: 180.0,
                       noRadiusForIndicator: true,
                       overlayShadow: true,
                       overlayShadowColors: Colors.white,
                       overlayShadowSize: 0.7,
                            images:  [
                             NetworkImage('https://thumbs.dreamstime.com/b/education-icon-hand-innovative-online-e-learning-internet-technology-concept-webinar-knowledge-training-courses-skill-168577248.jpg'),
                             NetworkImage('https://previews.123rf.com/images/ake1150/ake11502004/ake1150200400092/145111937-asian-girl-student-video-conference-e-learning-with-teacher-and-classmates-on-computer-in-living-roo.jpg'),
                             NetworkImage('https://media.istockphoto.com/photos/young-woman-working-from-home-picture-id1221479375?k=20&m=1221479375&s=612x612&w=0&h=ZqilVW8KSLi0c8yi1bdCibkSzFvI6LPNORKWeElVxnI=')
                           ],         
                           
                   ),
                 )                        
                ),
              );        
      
  }
}
 
 class  BannerModeltest  {
   final String  logo ;

   BannerModeltest(this.logo);
 }
  
 