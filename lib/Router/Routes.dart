import 'package:flutter/material.dart';
import '../Component/Text/Text.dart';
import '../Component/Home/Home.dart';
import '../Root.dart';
import '../Component/GoBack/GoBack.dart';
import '../Component/Video/Video.dart';
import '../Component/Container/Container.dart';
import '../Component/Image/Image.dart';
final Map routes = {
  '/': (context)=>new RootApp(new MyHome(),"Flutter 组件DEMO",new Container()),
  '/text': (context)=>new RootApp(new MyText(),"Text组件",new GoBack()),
  '/video':(context)=>new RootApp(new VideoApp(), "Video组件", new GoBack()),
  '/container':(context)=>new RootApp(new MyContainer(), "Container 组件", new GoBack()),
  '/image':(context)=>new RootApp(new MyImage(), "Image 组件", new GoBack())

};


// 命名路由传参的具体写法
var onGenerateRoute = (RouteSettings setting){
  final String name = setting.name;
  final Function pageContentBuilder = routes[name];
  if(pageContentBuilder != null){
    if(setting.arguments != null){
      final Route route = MaterialPageRoute(
        builder:(context)=>pageContentBuilder(context,arguments:setting.arguments)
      );
      return route;
    }else{
      final Route route = MaterialPageRoute(
          builder:(context)=>
            pageContentBuilder(context)
        );
        return route;
    }
  }
};
