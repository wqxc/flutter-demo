import 'package:flutter/material.dart';
/*
  该组件提供一个点击icon，用于在当前路由中回到上一步。
*/ 


class GoBack extends StatelessWidget {
  const GoBack({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new BackButton(
            onPressed:(){
              Navigator.of(context).pop();
            },
            color: Colors.white
        );
  }
}