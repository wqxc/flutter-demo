import 'package:flutter/material.dart';

import './Component/Home/Home.dart';
/*
  Scaffold 常用属性。
  AppBar: 显示在界面顶部的-- 栏
    AppBar 是一个类 这个类的属性可以在 右键 go to definition 可以查到这个类的属性。
  body: 主体内容 除开头部和底部的中间内容。
  Draw: 抽屉的效果
  这些都是组件，
*/ 
class MyScaffold extends StatelessWidget {
  const MyScaffold({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // 就是头部显示的内容。
        title: new Text('这是AppBar'),
        // 头部，头部的位置
        leading: new Icon(Icons.settings),
      ),
      body: new MyHome(),
      );
  }
}