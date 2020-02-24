import 'package:flutter/material.dart';

/*
  ListView 组件的作用是用来定义列表项。
  更多是用来做新闻列表布局

  new ListView(
    scrollDirection:Axis.horizontal（水平列表）vertical（垂直列表）
    padding: EdgeInsets类型的值，表示内边距
    resol：bool值，表示组件反向排序
  )
*/
class MyListView extends StatelessWidget {
  const MyListView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Column(children: <Widget>[
      SizedBox(
        height: 20.0,
        child: new Text(
          '普通的ListView的使用',
          style: TextStyle(
            color: Colors.green,
            fontSize: 18.0,
          ),
        ),
      ),
      new Flexible(
        child: new ListView(
          children: <Widget>[
            ListTile(
              title: new Text("一般ListView组件配合ListTile组件一起使用"),
              subtitle: new Text('这是类似于新闻的子标题'),
            ),
            ListTile(
              title: new Text("一般ListView组件配合ListTile组件一起使用"),
              subtitle: new Text('这是类似于新闻的子标题'),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 20.0,
        child: new Text(
          '使用Icon当做listTile的头和尾部',
          style: TextStyle(
            color: Colors.green,
            fontSize: 18.0,
          ),
        ),
      ),
      new Flexible(
        child: new ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(
                Icons.select_all,
                color: Colors.green,
              ),
              title: new Text("一般ListView组件配合ListTile组件一起使用"),
              subtitle: new Text('这是类似于新闻的子标题'),
            ),
            ListTile(
              title: new Text("一般ListView组件配合ListTile组件一起使用"),
              subtitle: new Text('这是类似于新闻的子标题'),
              trailing: Icon(
                Icons.security,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 20.0,
        child: new Text(
          '使用图片当做listTile的头和尾部',
          style: TextStyle(
            color: Colors.green,
            fontSize: 18.0,
          ),
        ),
      ),
      new Flexible(
        child: new ListView(
          children: <Widget>[
            ListTile(
              leading:
                  Image.network('https://www.itying.com/images/flutter/1.png'),
              title: new Text("一般ListView组件配合ListTile组件一起使用"),
              subtitle: new Text('这是类似于新闻的子标题'),
            ),
            ListTile(
              title: new Text("一般ListView组件配合ListTile组件一起使用"),
              subtitle: new Text('这是类似于新闻的子标题'),
              trailing:
                  Image.network('https://www.itying.com/images/flutter/2.png'),
            ),
          ],
        ),
      ),
    ]);
  }
}
