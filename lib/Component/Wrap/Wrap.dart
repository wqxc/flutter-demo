import 'package:flutter/material.dart';

/*
   Wrap 组件与Row和Column 的表现几乎一致。
   按时，Row和Column是单行单列的。Wrap则是在mainAxis上空间不足的时候，
   则向crossAxis上扩展

   一般在row中横向多个button排列，超出屏幕会报错，
   wrap组件则是会将其换行处理

   属性

  横向的排列方式
  alignment: WrapAlignment.end, 在父组件的右边
  runAlignment:WrapAlignment.end 父组件的下边排列
*/

class MyWrap extends StatelessWidget {
  const MyWrap({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
        height: 300.0,
        width: 300.0,
        color: Colors.red,
        child: new Wrap(
          spacing: 10.0,
          runSpacing: 10.0,
          // 横向的排列方式
          alignment: WrapAlignment.end,
          runAlignment: WrapAlignment.end,
          children: <Widget>[
            new RaisedButton(
              child: Text("这是一个按钮1"),
              textColor: Theme.of(context).accentColor,
              onPressed: () {},
            ),
            new RaisedButton(
              child: Text("这是一个按钮2"),
              textColor: Theme.of(context).accentColor,
              onPressed: () {},
            ),
            new RaisedButton(
              child: Text("这是一个按钮3"),
              textColor: Theme.of(context).accentColor,
              onPressed: () {},
            ),
            new RaisedButton(
              child: Text("这是一个按钮4"),
              textColor: Theme.of(context).accentColor,
              onPressed: () {},
            ),
            new RaisedButton(
              child: Text("这是一个按钮5"),
              textColor: Theme.of(context).accentColor,
              onPressed: () {},
            ),
            new RaisedButton(
              child: Text("这是一个按钮6"),
              textColor: Theme.of(context).accentColor,
              onPressed: () {},
            ),
          ],
        ));
  }
}
