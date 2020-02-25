import 'package:flutter/material.dart';
import 'package:flutter_demo/Component/IconContainer/IconContainer.dart';
/*
  Expanded 主要的作用是弹性布局
*/

class MyExpanded extends StatelessWidget {
  const MyExpanded({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        SizedBox(
            height: 40.0,
            child: new Center(
              child: new Text(
                '1：2的弹性布局',
                style: TextStyle(fontSize: 16.0, color: Colors.green),
              ),
            )),
        new Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: IconContainer(
                Icons.search,
                color: Colors.blue,
              ),
            ),
            Expanded(
              flex: 2,
              child: IconContainer(
                Icons.settings,
                color: Colors.red,
              ),
            ),
          ],
        ),
        SizedBox(
            height: 40.0,
            child: new Center(
              child: new Text(
                '1：2：1的弹性布局',
                style: TextStyle(fontSize: 16.0, color: Colors.green),
              ),
            )),
        new Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: IconContainer(
                Icons.search,
                color: Colors.blue,
              ),
            ),
            Expanded(
              flex: 2,
              child: IconContainer(
                Icons.settings,
                color: Colors.red,
              ),
            ),
            Expanded(
              flex: 1,
              child: IconContainer(
                Icons.settings_cell,
                color: Colors.yellow,
              ),
            ),
          ],
        ),
        SizedBox(
            height: 40.0,
            child: new Center(
              child: new Text(
                '左侧固定，右侧自适应的布局',
                style: TextStyle(fontSize: 16.0, color: Colors.green),
              ),
            )),
        new Row(
          children: <Widget>[
            IconContainer(
              Icons.search,
              color: Colors.blue,
            ),
            Expanded(
              flex: 2,
              child: IconContainer(
                Icons.settings,
                color: Colors.red,
              ),
            ),
          ],
        ),
        SizedBox(
            height: 40.0,
            child: new Center(
              child: new Text(
                '占据全部的宽度',
                style: TextStyle(fontSize: 16.0, color: Colors.green),
              ),
            )),
        new Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: IconContainer(
                Icons.settings,
                color: Colors.red,
              ),
            ),
          ],
        )
      ],
    );
  }
}
