import 'package:flutter/material.dart';

/*
   RasiedButton 是按钮组件
*/

class MyRaiseButton extends StatelessWidget {
  const MyRaiseButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      SizedBox(
        height: 20.0,
      ),
      new RaisedButton(
        child: Text("这是一个按钮"),
        textColor: Theme.of(context).accentColor,
        onPressed: () {},
      ),
      SizedBox(
        height: 20.0,
      ),
      new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new RaisedButton(
            child: Text("这是一个按钮"),
            textColor: Theme.of(context).accentColor,
            onPressed: () {},
          ),
          new RaisedButton(
            child: Text("这是一个按钮"),
            textColor: Theme.of(context).accentColor,
            onPressed: () {},
          ),
          new RaisedButton(
            child: Text("这是一个按钮"),
            textColor: Theme.of(context).accentColor,
            onPressed: () {},
          ),
        ],
      ),
    ]);
  }
}
