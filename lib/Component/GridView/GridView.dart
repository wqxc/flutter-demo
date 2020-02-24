import 'package:flutter/material.dart';

/*
  GridView能更好的实现网格布局，多用于商品列表的展示。能很好的将其内的
  子元素按照不同的要求进行排列。

  new GridView.count(
    scrollDirection：Axis.vertical（垂直布局）/horizontal（水平布局）
    padding：EdgeInsets类型的 内边距 
    resolve: 组件反向排序
    crossAxisSpacing：double 类型 水平的 widget间距
    mainAxisSpacing：double 垂直widget直接的间距
    crossAxisCount: int 一行 widget的数量
    childAspectRatio: double类型 比如 0.9/1.5 不能设定宽高，只能使用这种方式


  )
  )
*/
class MyGridView extends StatelessWidget {
  const MyGridView({Key key}) : super(key: key);

  _getListViewData() {
    List<Widget> list = new List();
    List colorList = [
      Colors.red,
      Colors.orange,
      Colors.yellow,
      Colors.green,
      Colors.blue,
      Colors.pink,
    ];
    for (var i = 0; i < colorList.length; i++) {
      list.add(new Container(
          width: 100.0,
          height: 100.0,
          color: colorList[i],
          child: new Center(
              child: new Text(
            "hello $i",
          ))));
    }
    return list.toList();
  }

  @override
  Widget build(BuildContext context) {
    return new GridView.count(crossAxisCount: 2, children: _getListViewData());
  }
}
