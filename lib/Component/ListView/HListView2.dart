import 'package:flutter/material.dart';

/*
  ListView 水平方向的ListView
  注意：在ListView中Container的height是不起作用的，默认是全屏的。
  不全屏情况下的的水平listView排列
*/
class MyHListView2 extends StatelessWidget {
  const MyHListView2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 300.0,
      child: new ListView(
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
      ),
    );
  }
}
