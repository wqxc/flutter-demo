import 'package:flutter/material.dart';

/*
   AspectRatio 组件的作用是 根据设置来调子元素的宽高比.
   简单的来说就是，该组件会将其子组件按照设定的比例来铺满父组件
*/

class MyAspectRatio extends StatelessWidget {
  const MyAspectRatio({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      SizedBox(
        height: 80.0,
        child: Center(
          child: Text(
            '我们设定黄色线包围的容器宽度是200，而且设定，AspectRatio 组件的 aspectRatio属性的值为 2/1,也就是宽高比。AspectRatio组件会按照设定的宽高比来填满容器 ',
            style: TextStyle(color: Colors.green, fontSize: 16.0),
          ),
        ),
      ),
      Container(
        width: 200.0,
        decoration:
            BoxDecoration(border: Border.all(width: 1, color: Colors.yellow)),
        child: AspectRatio(
          aspectRatio: 2.0 / 1.0,
          child: Container(
            color: Colors.red,
          ),
        ),
      ),
      SizedBox(
        height: 60.0,
        child: Center(
          child: Text(
            '和上边一样的宽度，我们设定不一样的宽高比例：3/1 ',
            style: TextStyle(color: Colors.green, fontSize: 16.0),
          ),
        ),
      ),
      Container(
        width: 200.0,
        decoration:
            BoxDecoration(border: Border.all(width: 1, color: Colors.yellow)),
        child: AspectRatio(
          aspectRatio: 3.0 / 1.0,
          child: Container(
            color: Colors.red,
          ),
        ),
      ),
      SizedBox(
        height: 60.0,
        child: Center(
          child: Text(
            '不设定容器的宽度,会按照比例撑满屏幕：3/1 ',
            style: TextStyle(color: Colors.green, fontSize: 16.0),
          ),
        ),
      ),
      Container(
        decoration:
            BoxDecoration(border: Border.all(width: 1, color: Colors.yellow)),
        child: AspectRatio(
          aspectRatio: 3.0 / 1.0,
          child: Container(
            color: Colors.red,
          ),
        ),
      ),
      SizedBox(
        height: 60.0,
        child: Center(
          child: Text(
            '同样的，我们可以单独设定容器的高度，而后指定宽高比：比如：2/1 ',
            style: TextStyle(color: Colors.green, fontSize: 16.0),
          ),
        ),
      ),
      Container(
        height: 100,
        decoration:
            BoxDecoration(border: Border.all(width: 1, color: Colors.yellow)),
        child: AspectRatio(
          aspectRatio: 2.0 / 1.0,
          child: Container(
            color: Colors.red,
          ),
        ),
      )
    ]);
  }
}
