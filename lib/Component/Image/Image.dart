import 'package:flutter/material.dart';

/*
  Image 组件的作用是显示图片，显示图片有两种：
  1 显示本地图片
  2 显示远程图片

  new Image(
    'url',
    alignment:Alignment.方位  设定图片的对齐方式
    color:Colors.blue  这个字段经常和colorBlendMode：一起使用，可以做到将图片颜色和背景颜色混合
    colorBlendMode：BlendMode.screen
    fit:BoxFit.cover  表示图片的显示样式，
    repeat: ImageRepeat.repeatX 表示图片的平铺方式，重复用图片覆盖容器
    width：设定图片的宽度
    height:设定图片的高度
    样式
    decoration:BoxDecoration（）
  )
*/
class MyImage extends StatelessWidget {
  const MyImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Column(children: <Widget>[
      SizedBox(
        height: 20.0,
      ),
      new Image.network(
        'http://gss0.baidu.com/-Po3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/adaf2edda3cc7cd90671e6473e01213fb90e91d4.jpg',
        fit: BoxFit.cover,
      ),
      SizedBox(
        height: 20.0,
      ),
      new Image.asset(
        'images/b.jpg',
        fit: BoxFit.cover,
      ),
    ]);
  }
}
