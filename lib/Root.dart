import 'package:flutter/material.dart';
import './Scaffold.dart';
import './Router/Routes.dart';
/*
  1. MaterialApp 组件是根组件，所有的组件都必须包含在这个组件之中。
  2. 我们定义的RootApp 继承与 StatelessWidget 也就是（无状态组件）。这个概念与React中的一样。表示一个组件一旦
  被创建就不会发生变化（除非销毁重建）。
  3. flutter中所有的组件都是 Widget 类型的。
  4. MaterialApp 组件的属性
    title 标题：
    theme 主题：使用 ThemeData 类来定义主题，比如：颜色。
    home 主页：主页要使用Scaffold组件。
    color 颜色：
    route 路由:
    ...
*/ 
class RootApp extends StatelessWidget {
  final Widget content;
  final String appbar;
  final Widget back;
  const RootApp(this.content,this.appbar,this.back,{Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          // 就是头部显示的内容。
          title: new Text(this.appbar),
          leading:this.back,
          // 头部，头部的位置
          // leading: new RaisedButton(
          //   child:new Icon(Icons.arrow_back),
          //   onPressed:(){
          //      Navigator.of(context).pop();
          //   }
          // ),
        ),
        body: content,
      );
  }
}