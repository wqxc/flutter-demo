import 'package:flutter/material.dart';

/*
  ListView 水平方向的ListView
  注意：在ListView中Container的height是不起作用的，默认是全屏的。
  ListView 默认是无法在其内嵌套ListView 组件的
*/
class MyHListView extends StatelessWidget {
  const MyHListView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      padding: EdgeInsets.all(10),
      scrollDirection: Axis.horizontal,
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
