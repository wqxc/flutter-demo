import 'package:flutter/material.dart';
import '../Component/Text/Text.dart';
import '../Component/Home/Home.dart';
import '../Root.dart';
import '../Component/GoBack/GoBack.dart';
import '../Component/Video/Video.dart';
import '../Component/Container/Container.dart';
import '../Component/Image/Image.dart';
import '../Component/ClipOval/ClipOval.dart';
import '../Component/ListView/ListView.dart';
import '../Component/ListView/HListView.dart';
import '../Component/ListView/VListView.dart';
import '../Component/ListView/HListView2.dart';
import '../Component/ListView/DynamicListView.dart';
import '../Component/GridView/GridView.dart';

final Map routes = {
  '/': (context) =>
      new RootApp(new MyHome(), "Flutter 组件DEMO", new Container()),
  '/text': (context) => new RootApp(new MyText(), "Text组件", new GoBack()),
  '/video': (context) => new RootApp(new VideoApp(), "Video组件", new GoBack()),
  '/container': (context) =>
      new RootApp(new MyContainer(), "Container 组件", new GoBack()),
  '/image': (context) => new RootApp(new MyImage(), "Image 组件", new GoBack()),
  '/clipoval': (context) =>
      new RootApp(new MyClipOval(), "ClipOval 组件", new GoBack()),
  '/listview': (context) =>
      new RootApp(new MyListView(), "ListView 组件", new GoBack()),
  '/hlistview': (context) =>
      new RootApp(new MyHListView(), "水平 ListView 组件", new GoBack()),
  '/hlistview2': (context) =>
      new RootApp(new MyHListView2(), "水平 ListView 组件2", new GoBack()),
  '/vlistview': (context) =>
      new RootApp(new MyVListView(), "垂直 ListView 组件", new GoBack()),
  '/dynamiclistview': (context) =>
      new RootApp(new MyDynamicListView(), "动态 ListView 组件", new GoBack()),
  '/gridview': (context) =>
      new RootApp(new MyGridView(), "GridView 组件", new GoBack()),
};

// 命名路由传参的具体写法
var onGenerateRoute = (RouteSettings setting) {
  final String name = setting.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (setting.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: setting.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
