import 'package:flutter/material.dart';
import './data.dart';
/*
  文本组件的作用是就是显示文本，不像HTML那样将所有的文本放在 div等标签内。
  Flutter中所有的文本都要放在 Text 组件中。
  再次说明了一点，flutter中所有的东西都是一个组件。
*/ 


class MyText extends StatelessWidget {
  const MyText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MyTextData();
  }
}