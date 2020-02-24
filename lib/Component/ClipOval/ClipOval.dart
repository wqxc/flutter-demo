import 'package:flutter/material.dart';

/*
 ClipOval 裁剪组件
 该组件会将图片裁剪成圆形或者是椭圆形，这个依据图片自身的样式来
*/
class MyClipOval extends StatelessWidget {
  const MyClipOval({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Column(children: <Widget>[
      SizedBox(
        height: 20.0,
      ),
      new ClipOval(
          child: new Image.network(
        'http://gss0.baidu.com/-Po3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/adaf2edda3cc7cd90671e6473e01213fb90e91d4.jpg',
        fit: BoxFit.cover,
      )),
      SizedBox(
        height: 20.0,
      ),
      new ClipOval(
        child: new Image.asset(
          'images/b.jpg',
          fit: BoxFit.cover,
          width: 200.0,
          height: 200.0,
        ),
      )
    ]);
  }
}
