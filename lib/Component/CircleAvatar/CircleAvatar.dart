import 'package:flutter/material.dart';

/*
   CircleAvatar
   主要是用来处理头像的。

*/

class MyCircleAvatar extends StatelessWidget {
  const MyCircleAvatar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      new CircleAvatar(
        backgroundImage: NetworkImage(
            'http://gss0.baidu.com/-Po3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/adaf2edda3cc7cd90671e6473e01213fb90e91d4.jpg'),
      ),
      SizedBox(
        height: 20.0,
      ),
      new CircleAvatar(
        backgroundImage:
            NetworkImage('https://www.itying.com/images/flutter/1.png'),
      )
    ]);
  }
}
