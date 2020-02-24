import 'package:flutter/material.dart';

/*
  Image 组件的作用是显示图片，显示图片有两种：
  1 显示本地图片
  2 显示远程图片
*/ 
class MyImage extends StatelessWidget {
  const MyImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Column(
          children:<Widget>[
            SizedBox(height: 20.0,),
            new Image.network(
            'http://gss0.baidu.com/-Po3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/adaf2edda3cc7cd90671e6473e01213fb90e91d4.jpg',
            fit: BoxFit.cover,
            ),
            SizedBox(height: 20.0,),
            new Image.asset(
              'images/b.jpg',
              fit: BoxFit.cover,
            ),
          ]
        );
  }
}