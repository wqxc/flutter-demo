import 'package:flutter/material.dart';
/*
  flutter很多的组件是没有Padding这个属性的，比如Text 文本之类的。
  所以flutter提供了一个Padding组件来辅助实现padding属性。

  如例子中说的那样，图片形成的列表，其本身是没有padding这个属性的，但是可以使用padding 组件来模拟padding。

  paddig 组件有两个属性
  child: 子组件
  padding：值为double类型 表示间距
*/

class MyPadding extends StatelessWidget {
  const MyPadding({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new GridView.count(
      crossAxisCount: 2,
      children: <Widget>[
        new Padding(
            padding: EdgeInsets.all(10),
            child: Image.network(
              "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1582627128182&di=db4a232dad3027e43d8598a4360958b9&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fwallpaper%2F2018-08-13%2F5b7128e120f56.jpg",
              fit: BoxFit.cover,
            )),
        new Padding(
            padding: EdgeInsets.all(10.0),
            child: Image.network(
              "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1582627128182&di=0daefcb8936ab327c2f58c631d2247a8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201508%2F16%2F20150816193536_AkCru.jpeg",
              fit: BoxFit.cover,
            )),
        new Padding(
            padding: EdgeInsets.all(10.0),
            child: Image.network(
              "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1777936490,3598157176&fm=26&gp=0.jpg",
              fit: BoxFit.cover,
            )),
        new Padding(
            padding: EdgeInsets.all(10.0),
            child: Image.network(
              "https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3226757858,454108853&fm=26&gp=0.jpg",
              fit: BoxFit.cover,
            )),
        new Padding(
            padding: EdgeInsets.all(10),
            child: Image.network(
              "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1582627128182&di=db4a232dad3027e43d8598a4360958b9&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fwallpaper%2F2018-08-13%2F5b7128e120f56.jpg",
              fit: BoxFit.cover,
            )),
        new Padding(
            padding: EdgeInsets.all(10.0),
            child: Image.network(
              "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1582627128182&di=0daefcb8936ab327c2f58c631d2247a8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201508%2F16%2F20150816193536_AkCru.jpeg",
              fit: BoxFit.cover,
            )),
        new Padding(
            padding: EdgeInsets.all(10.0),
            child: Image.network(
              "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1777936490,3598157176&fm=26&gp=0.jpg",
              fit: BoxFit.cover,
            )),
        new Padding(
            padding: EdgeInsets.all(10.0),
            child: Image.network(
              "https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3226757858,454108853&fm=26&gp=0.jpg",
              fit: BoxFit.cover,
            )),
      ],
    );
  }
}
