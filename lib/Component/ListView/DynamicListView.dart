import 'package:flutter/material.dart';

/*
  动态生成listView。
*/
class MyDynamicListView extends StatelessWidget {
  const MyDynamicListView({Key key}) : super(key: key);

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
      ));
    }
    return list.toList();
  }

  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        SizedBox(
            height: 20.0,
            child: new Text(
              "使用for循环来遍历ListView数据",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0, color: Colors.green),
            )),
        new Container(
          height: 300.0,
          padding: EdgeInsets.all(10.0),
          child: new ListView(
              // padding: EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              children: _getListViewData()),
        ),
        SizedBox(
            height: 20.0,
            child: new Text(
              "使用ListView提供的builder来遍历数据",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0, color: Colors.green),
            )),
        new Container(
            height: 300.0,
            padding: EdgeInsets.all(10.0),
            child: new ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: _getListViewData().length,
              itemBuilder: (context, index) {
                return _getListViewData()[index];
              },
            ))
      ],
    );
  }
}
