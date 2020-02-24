import 'package:flutter/material.dart';
/*
  Container组件雷同于div标签，主要的主要是作为一个容器存在。
  一个容器拥有宽高padding，margin等属性。
  使用：
  Container(
    width: double类型的值，表示容器的宽度，可以不设定，不设定的时候就是使用子元素来撑开。
    height: double类型，表示高度，
    padding：EdgeInsets.all(10.0), 可以从源码中查看。
    // padding 与 margin的作用于css中的一致。
    // 多数组件是没有 这两个属性的。一般。某个组件需要用到这两个属性的时候，需要用到container组件将其包裹起来。

    padding:EdgeInsets.all(10.0),
    // margin: EdgeInsets.all(10.0),
    margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
    // transform: 空间转换属性，用于转换
    // transform: Matrix4.rotationZ(0.3),

    表示容器组件本身的装饰
    decoration:BoxDecoration(

    )
  )

*/ 


class MyContainer extends StatelessWidget {
  const MyContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      width: 600.0,
      height: 300.0,
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(
          color:Colors.blue,
          width: 2.0,
        )
      ),
      child: null,
    );
  }
}