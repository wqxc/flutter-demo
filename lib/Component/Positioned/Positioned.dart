import 'package:flutter/material.dart';

/*
   Positioned 组件类似于css中的绝对定位
   left
   right
   top 
   bottom
   几个值都是double类型的。表示相对于父容器的左上顶点进行计算。


*/

class MyPositioned extends StatelessWidget {
  const MyPositioned({Key key}) : super(key: key);

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
          alignment: Alignment.center,
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
            '使用Positioned组件来包裹每一个icon来单独处理',
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
            Positioned(
                left: 0.0, top: 0.0, child: new Icon(Icons.settings_cell)),
            Positioned(left: 30.0, top: 30.0, child: new Icon(Icons.search)),
            Positioned(left: 90.0, top: 90.0, child: new Icon(Icons.security)),
          ],
        ),
      ),
    ]);
  }
}
