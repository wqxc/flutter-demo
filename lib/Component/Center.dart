import 'package:flutter/material.dart';

import './Text/Text.dart';
/*
  center 组件的作用是居中，上下左右都同时居中。
*/ 
class MyCenter extends StatelessWidget {
  const MyCenter({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Center(
      child:new MyText(),
    );
  }
}