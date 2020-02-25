import 'package:flutter/material.dart';

/*
 
  GridView  有两个常用的构造方法 count和builder。
  count 是静态的
  builder 是动态的生成列表
*/
class MyBuilderGridView extends StatelessWidget {
  const MyBuilderGridView({Key key}) : super(key: key);

  _getGridViewData() {
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
          // width: 100.0,
          // height: 100.0,
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
    return new GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
      ),
      itemCount: this._getGridViewData().length,
      itemBuilder: (context, index) {
        return this._getGridViewData()[index];
      },
    );
  }
}
