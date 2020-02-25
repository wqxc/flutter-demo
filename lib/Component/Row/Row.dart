import 'package:flutter/material.dart';
import '../IconContainer/IconContainer.dart';
/*
   水平布局组件,
   这里的水平组件布局与flex布局有异曲同工之妙。
   row组件本身对应 flex布局的 flex-direction:row 的容器
   mainAxisAlignment 属性来调整一个row内的组件在水平方向上是如何排列，
   类似于flex的  justify-content 属性

  crossAxisAligment: 表示的是 row组件内的子组件在垂直方向上是如何排列的
  等价于flex布局的 align-items属性

   Row组件会默认在当前组件的中间来进行布局


   Row 组件中 mainAxisAlignment和 crossAxisAligment两个属性配合使用。
  另外的这两个属性的 center，start等属性是相对于其外部父元素来说的。也就相当于其父元素
  的样式被添加了 display:felx
*/

class MyRow extends StatelessWidget {
  const MyRow({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        SizedBox(
            height: 40.0,
            child: new Center(
                child: Text(
              '水平方向子组件的排列：默认是start',
              style: TextStyle(color: Colors.green, fontSize: 16.0),
            ))),
        new Row(children: <Widget>[
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
        SizedBox(
            height: 40.0,
            child: new Center(
                child: Text(
              '调整水平方向的显示方式:spaceAround',
              style: TextStyle(color: Colors.green, fontSize: 16.0),
            ))),
        new Row(
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
        SizedBox(
            height: 40.0,
            child: new Center(
                child: Text(
              '调整水平方向的显示方式:spaceBetween',
              style: TextStyle(color: Colors.green, fontSize: 16.0),
            ))),
        new Row(
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
        SizedBox(
            height: 40.0,
            child: new Center(
                child: Text(
              '调整水平方向的显示方式:center',
              style: TextStyle(color: Colors.green, fontSize: 16.0),
            ))),
        new Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
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
        SizedBox(
            height: 40.0,
            child: new Center(
                child: Text(
              '调整水平方向的显示方式:end',
              style: TextStyle(color: Colors.green, fontSize: 16.0),
            ))),
        new Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
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
        ])
      ],
    );
  }
}
