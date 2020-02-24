import 'package:flutter/material.dart';

/*
  ListView 垂直方向的方向的ListView
  ListView默认的是将其内部的子元素按照垂直方向依次排列
  注意：在ListView中Container的width是不起作用的，默认是全屏的。
*/
class MyVListView extends StatelessWidget {
  const MyVListView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
        new Container(
          width: 100.0,
          height: 100.0,
          color: Colors.red,
        ),
        new Container(
          width: 100.0,
          height: 100.0,
          color: Colors.orange,
        ),
        new Container(
          width: 100.0,
          height: 100.0,
          color: Colors.yellow,
        ),
        new Container(width: 100.0, height: 100.0, color: Colors.green),
        new Container(
          width: 100.0,
          height: 100.0,
          color: Colors.blue,
        )
      ],
    );
  }
}
