import 'package:flutter/material.dart';

/*
   Align 组件的属性 
   Alignment(-1, -1),
   第一个参数表示 距离左侧的距离，
   第二个参数表示距离上边的距离。
   参照的原点是父容器的中心点。
*/

class MyAlign extends StatelessWidget {
  const MyAlign({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      SizedBox(
        height: 60.0,
        child: Center(
          child: Text(
            '当Stack中有多个子组件的时的情况:Stack 内部所有的元素都会统一行动，如下所示，三个icon全部挤在一起',
            style: TextStyle(color: Colors.green, fontSize: 16.0),
          ),
        ),
      ),
      new Container(
        height: 200.0,
        width: 200.0,
        color: Colors.blue,
        child: Stack(
          alignment: Alignment(-1, 0),
          children: <Widget>[
            new Icon(Icons.settings_cell),
            new Icon(Icons.search),
            new Icon(Icons.security),
          ],
        ),
      ),
      SizedBox(
        height: 60.0,
        child: Center(
          child: Text(
            '使用Align组件包裹每一个icon，来针对每一个icon进行单独的处理',
            style: TextStyle(color: Colors.green, fontSize: 16.0),
          ),
        ),
      ),
      new Container(
        height: 200.0,
        width: 200.0,
        color: Colors.blue,
        child: Stack(
          children: <Widget>[
            Align(
                alignment: Alignment.center,
                child: new Icon(Icons.settings_cell)),
            Align(
                alignment: Alignment.centerLeft, child: new Icon(Icons.search)),
            Align(
                alignment: Alignment.centerRight,
                child: new Icon(Icons.security)),
          ],
        ),
      ),
    ]);
  }
}
