import 'package:flutter/material.dart';
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
  const RootApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // 主体颜色 对应头部的颜色。
        primarySwatch: Colors.green,
        // 亮度
        // brightness:Brightness.dark
      ),
      // home: new MyScaffold(),
      initialRoute:'/',
      onGenerateRoute: onGenerateRoute,
    );
  }
}