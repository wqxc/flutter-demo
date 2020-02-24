import 'package:flutter/material.dart';
import './Item.dart';
import './config.dart';
class MyHome extends StatelessWidget {
  const MyHome({Key key}) : super(key: key);

  List<Widget> _getList(){
    List<Widget> list = new List();
    for(int i =0; i<listAll.length; i++){
      list.add(
        new MyItem(i)
      );
    }
    return list;
  }
  @override
  Widget build(BuildContext context) {
    return new GridView.count(
      padding:EdgeInsets.fromLTRB(0, 10, 0, 0),
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      childAspectRatio: 2.5,
      children: this._getList()
    );
  }
}