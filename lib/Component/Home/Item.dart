
import 'package:flutter/material.dart';
import './config.dart';

class MyItem extends StatelessWidget {
  final int index;
  const MyItem(this.index, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
          margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
          child:new Row(
            children: <Widget>[
              new Expanded(
                child: new RaisedButton(
                  padding:EdgeInsets.all(20),
                  color: Colors.green,
                  elevation: 20,
                  child: new Text(
                      listAll[this.index]['title'],
                      style: TextStyle(
                        // height: 40.0,
                        color: Colors.black
                      ),
                  ),
                  onPressed: (){
                    Navigator.pushNamed(context, listAll[this.index]['url']);
                  },
                )
              )
            ]
          )
        );
  }
}