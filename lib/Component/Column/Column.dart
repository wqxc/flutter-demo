import 'package:flutter/material.dart';
import '../IconContainer/IconContainer.dart';
/*
   垂直布局组件,
   这里的垂直组件布局与flex布局有异曲同工之妙。
   column组件本身对应 flex布局的 flex-direction:column 的容器
   mainAxisAlignment 属性来调整一个column内的组件在垂直方向上是如何排列，
   类似于flex的  justify-content 属性

  crossAxisAligment: 表示的是 column组件内的子组件在垂直方向上是如何排列的
  等价于flex布局的 align-items属性

   column组件会默认在当前组件的中间来进行布局


   column 组件中 mainAxisAlignment和 crossAxisAligment两个属性配合使用。
  另外的这两个属性的 center，start等属性是相对于其外部父元素来说的。也就相当于其父元素
  的样式被添加了 display:felx
*/

class MyColumn extends StatelessWidget {
  const MyColumn({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        SizedBox(
            height: 40.0,
            child: new Center(
                child: Text(
              '我们以 CrossAxisAlignment.center 为基准：',
              style: TextStyle(color: Colors.green, fontSize: 16.0),
            ))),
        new Container(
          height: 400.0,
          width: 400.0,
          decoration:
              BoxDecoration(border: Border.all(width: 2.0, color: Colors.red)),
          child: new Column(children: <Widget>[
            new IconContainer(
              Icons.home,
              color: Colors.red,
            ),
            new IconContainer(
              Icons.sentiment_dissatisfied,
              color: Colors.blue,
            ),
            new IconContainer(
              Icons.hot_tub,
              color: Colors.green,
            )
          ]),
        ),
        SizedBox(
            height: 40.0,
            child: new Center(
                child: Text(
              'mainAxisAlignment:MainAxisAlignment.spaceAround,',
              style: TextStyle(color: Colors.green, fontSize: 16.0),
            ))),
        new Container(
          height: 400.0,
          width: 400.0,
          decoration:
              BoxDecoration(border: Border.all(width: 2.0, color: Colors.red)),
          child: new Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new IconContainer(
                  Icons.home,
                  color: Colors.red,
                ),
                new IconContainer(
                  Icons.sentiment_dissatisfied,
                  color: Colors.blue,
                ),
                new IconContainer(
                  Icons.hot_tub,
                  color: Colors.green,
                )
              ]),
        ),
        SizedBox(
            height: 40.0,
            child: new Center(
                child: Text(
              'mainAxisAlignment:MainAxisAlignment.spaceBetween,',
              style: TextStyle(color: Colors.green, fontSize: 16.0),
            ))),
        new Container(
          height: 400.0,
          width: 400.0,
          decoration:
              BoxDecoration(border: Border.all(width: 2.0, color: Colors.red)),
          child: new Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new IconContainer(
                  Icons.home,
                  color: Colors.red,
                ),
                new IconContainer(
                  Icons.sentiment_dissatisfied,
                  color: Colors.blue,
                ),
                new IconContainer(
                  Icons.hot_tub,
                  color: Colors.green,
                )
              ]),
        )
      ],
    );
  }
}
