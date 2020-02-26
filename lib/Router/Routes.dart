import 'package:flutter/material.dart';
import 'package:flutter_demo/Component/GridView/BuilderGridView.dart';
import 'package:flutter_demo/Component/ListTile/ListTile.dart';
import 'package:flutter_demo/Component/Padding/Padding.dart';
import 'package:flutter_demo/Component/Stack/Stack.dart';
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
import '../Component/Padding/Padding.dart';
import '../Component/Column/Column.dart';
import '../Component/Row/Row.dart';
import '../Component/Expanded/Expanded.dart';
import '../Component/Stack/Stack.dart';
import '../Component/Align/Align.dart';
import '../Component/Positioned/Positioned.dart';
import '../Component/AspectRatio/AspectRatio.dart';
import '../Component/Card/Card.dart';
import '../Component/ListTile/ListTile.dart';
import '../Component/CircleAvatar/CircleAvatar.dart';
import '../Component/RaisedButton/RaisedButton.dart';
import '../Component/Wrap/Wrap.dart';
import '../Component/IconContainer/Icon.dart';

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
  '/dynamicgridview': (context) =>
      new RootApp(new MyBuilderGridView(), "动态 GridView 组件", new GoBack()),
  '/padding': (context) =>
      new RootApp(new MyPadding(), "Padding 组件", new GoBack()),
  '/column': (context) =>
      new RootApp(new MyColumn(), "Column 组件", new GoBack()),
  '/row': (context) => new RootApp(new MyRow(), "Row 组件", new GoBack()),
  '/expanded': (context) =>
      new RootApp(new MyExpanded(), "Expanded 组件", new GoBack()),
  '/stack': (context) => new RootApp(new MyStack(), "Stack 组件", new GoBack()),
  '/align': (context) => new RootApp(new MyAlign(), "Align 组件", new GoBack()),
  '/positioned': (context) =>
      new RootApp(new MyPositioned(), "Positioned 组件", new GoBack()),
  '/aspectratio': (context) =>
      new RootApp(new MyAspectRatio(), "AspectRatio 组件", new GoBack()),
  '/card': (context) => new RootApp(new MyCard(), "Card 组件", new GoBack()),
  '/card': (context) => new RootApp(new MyCard(), "Card 组件", new GoBack()),
  '/listtile': (context) =>
      new RootApp(new MyListTile(), "ListTile 组件", new GoBack()),
  '/circleavatar': (context) =>
      new RootApp(new MyCircleAvatar(), "CircleAvatar 组件", new GoBack()),
  '/wrap': (context) => new RootApp(new MyWrap(), "Wrap 组件", new GoBack()),
  '/raisebutton': (context) =>
      new RootApp(new MyRaiseButton(), "Button 组件", new GoBack()),
  '/icon': (context) => new RootApp(new MyIcon(), "Icon 组件", new GoBack()),
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
