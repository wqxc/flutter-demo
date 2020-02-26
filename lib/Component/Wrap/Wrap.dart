import 'package:flutter/material.dart';

/*
   Wrap 组件与Row和Column 的表现几乎一致。
   按时，Row和Column是单行单列的。Wrap则是在mainAxis上空间不足的时候，
   则向crossAxis上扩展

   一般在row中横向多个button排列，超出屏幕会报错，
   wrap组件则是会将其换行处理
*/

class MyWrap extends StatelessWidget {
  const MyWrap({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Wrap(
      spacing: 10.0,
      runSpacing: 10.0,
      alignment: WrapAlignment.end,
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
    );
  }
}
