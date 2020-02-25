import 'package:flutter/material.dart';

/*
   Stack 层叠组件。
   主要的作用类似于 css的相对定位
   两个属性
   child： 子组件
   alignment 配置所有的子元素的显示位置
   值为 Alignment(-1, 0),-1 到1 的值。
   表示，子组件在其父组件的相对位置。
*/

class MyStack extends StatelessWidget {
  const MyStack({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      SizedBox(
        height: 40.0,
        child: Center(
          child: Text(
            'alignment：Alignment(-1, 0)',
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
          children: <Widget>[new Icon(Icons.settings_cell)],
        ),
      ),
      SizedBox(
        height: 40.0,
        child: Center(
          child: Text('alignment：Alignment(-1, 1)',
              style: TextStyle(color: Colors.green, fontSize: 16.0)),
        ),
      ),
      new Container(
        height: 200.0,
        width: 200.0,
        color: Colors.blue,
        child: Stack(
          alignment: Alignment(-1, 1),
          children: <Widget>[new Icon(Icons.settings_cell)],
        ),
      ),
      SizedBox(
        height: 40.0,
        child: Center(
          child: Text('alignment：Alignment(1, 1)',
              style: TextStyle(color: Colors.green, fontSize: 16.0)),
        ),
      ),
      new Container(
        height: 200.0,
        width: 200.0,
        color: Colors.blue,
        child: Stack(
          alignment: Alignment(1, 1),
          children: <Widget>[new Icon(Icons.settings_cell)],
        ),
      ),
      SizedBox(
        height: 40.0,
        child: Center(
          child: Text('alignment：Alignment(1, 0)',
              style: TextStyle(color: Colors.green, fontSize: 16.0)),
        ),
      ),
      new Container(
        height: 200.0,
        width: 200.0,
        color: Colors.blue,
        child: Stack(
          alignment: Alignment(1, 0),
          children: <Widget>[new Icon(Icons.settings_cell)],
        ),
      ),
      SizedBox(
        height: 40.0,
        child: Center(
          child: Text('alignment：Alignment(1, 1)',
              style: TextStyle(color: Colors.green, fontSize: 16.0)),
        ),
      ),
      new Container(
        height: 200.0,
        width: 200.0,
        color: Colors.blue,
        child: Stack(
          alignment: Alignment(1, -1),
          children: <Widget>[new Icon(Icons.settings_cell)],
        ),
      )
    ]);
  }
}
