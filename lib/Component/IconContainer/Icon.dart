import 'package:flutter/material.dart';
import './IconContainer.dart';

/*
   
Icon 组件提供，一些图标字体

*/

class MyIcon extends StatelessWidget {
  const MyIcon({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      new Row(
        children: <Widget>[
          new IconContainer(Icons.security),
          new IconContainer(Icons.unarchive),
          new IconContainer(Icons.unfold_less),
          new IconContainer(Icons.update)
        ],
      ),
      new Row(
        children: <Widget>[
          new IconContainer(Icons.usb),
          new IconContainer(Icons.verified_user),
          new IconContainer(Icons.vertical_align_center),
          new IconContainer(Icons.video_call)
        ],
      )
    ]);
  }
}
