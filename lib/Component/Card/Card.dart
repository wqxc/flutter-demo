import 'package:flutter/material.dart';

/*
   Card 组件 是卡片组件块。
   属性主要有如下：
   margin：外边距
   child：子组件
   Shape:Card的阴影效果

   Card 只是提供了一个凸起的卡片，其中的内容可以任意设置
*/

class MyCard extends StatelessWidget {
  const MyCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      Card(
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            ListTile(
              title: new Text(
                '嬴政',
                style: TextStyle(fontSize: 28.0),
              ),
              subtitle: new Text('一统六国'),
            ),
            ListTile(
              title: new Text(
                '电话：123456789',
              ),
              subtitle: new Text('地址：咸阳市长安街001号'),
            )
          ],
        ),
      ),
      Card(
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            ListTile(
              title: new Text(
                '刘邦',
                style: TextStyle(fontSize: 28.0),
              ),
              subtitle: new Text('灭秦立汉'),
            ),
            ListTile(
              title: new Text(
                '电话：123456789',
              ),
              subtitle: new Text('地址：咸阳市长安街001号'),
            )
          ],
        ),
      )
    ]);
  }
}
