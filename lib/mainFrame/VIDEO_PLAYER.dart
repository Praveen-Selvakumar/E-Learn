import 'package:elearn/Common/Toolbar.dart';
import 'package:elearn/Common/TestDrawer.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';
 

/*class VideoApp extends StatefulWidget {
  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  
 late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Demo',
      home: Scaffold(
        body: Center(
          child: _controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
              : Container(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _controller.value.isPlaying
                  ? _controller.pause()
                  : _controller.play();
            });
          },
          child: Icon(
            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}*/

class LESSONS extends StatefulWidget {
 

  @override
  _LESSONSState createState() => _LESSONSState();
}

class _LESSONSState extends State<LESSONS> {

 late VideoPlayerController _controller;


  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       drawer: new TestDrawer(true, true, true, true , true , true , true, true, true, true, false),
        body: SingleChildScrollView(          
          child: Column(
            children: [   
              SizedBox(height: 35,),
              Material(
                elevation: 5,
                child: Cmn_Toolbar(title_: 'LESSONS',key :  null, context: context, ),                
              ),
              SizedBox(height: 30,),
              Card(   
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)
                ),               
                elevation: 10,
                margin: EdgeInsets.only(left:15, right: 15),
                child: Wrap(
                    children: [
                        Container(                          
                          height: 200,
                          width: double.infinity,
                          child: _controller.value.isInitialized  ? 
                          Stack(
                            children: [
                                AspectRatio(
                                       aspectRatio: _controller.value.aspectRatio,
                                       child: VideoPlayer(_controller),),
                              Visibility(
                                visible: _controller.value.isPlaying ? false : true  ,
                                child: Center(
                                  child: CircleAvatar(
                                     radius: 30,
                                     backgroundImage: ExactAssetImage('assets/orange_circle.png'), ),
                                ),
                              ), 
                              Visibility(
                                visible: _controller.value.isPlaying   ? false :  true ,
                                child: Center(
                                  child: InkWell(
                                    onTap: (){
                                       setState(() {
                                          _controller.value.isPlaying
                                               ? _controller.pause()  : _controller.play();
                                              });
                                    },
                                    child: Image.asset('assets/vedio_player_icon.png', height: 55, width: 55,)) ,
                                ),
                              ),                              
                             
                            ],
                             
                          )

                                 : Container(),),
                          Row(
                            children: [                                
                               VP_BTNS('assets/VP_REPLAY.png'), Spacer() ,
                               VP_BTNS('assets/VP_PAUSE.png'), Spacer() , VP_BTNS('assets/VP_HELP.png'),
                            ],
                          )       
                    ], 
                ),
              )            

            ],
          ),
        ),
     );
  }

  Widget VP_BTNS(String asset_string){
    return  InkWell(
      onTap: (){
         /*setState(() {
              _controller.value.isPlaying
                  ? _controller.pause()
                  : _controller.play();
            });*/
      },
      child: Image.asset(asset_string , width: 35, height:  35,),
    );
  }


 @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }


}