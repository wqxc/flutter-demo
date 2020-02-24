import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoApp extends StatefulWidget {
  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'http://cmgw-vpc.lechange.com:8888/LCO/3H05269PAME553E/2/0/20200222T041502/dev_3H05269PAME553E_20200222T041502.m3u8')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
          height: 300.0,
          width: 800.0,
          decoration:BoxDecoration(border: Border.all(
            color:Colors.blue,
            width: 2.0,
          )),
          child: _controller.value.initialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
              : Container(),
        );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}