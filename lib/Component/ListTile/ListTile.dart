import 'package:flutter/material.dart';

/*
   该组件一般和ListView或者是 Card组件使用。
   主要是形成主次关系的文档。
*/

class MyListTile extends StatelessWidget {
  const MyListTile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      SizedBox(
        height: 80.0,
        child: Center(
          child: Text(
            'ListTitle 主要的作用就是一个主标题，一个次级标题 ',
            style: TextStyle(color: Colors.green, fontSize: 16.0),
          ),
        ),
      ),
      Container(
          width: 200.0,
          decoration:
              BoxDecoration(border: Border.all(width: 1, color: Colors.yellow)),
          child: ListTile(
            title: new Text("这是大标题"),
            subtitle: new Text("这是次级标题"),
          )),
    ]);
  }
}
