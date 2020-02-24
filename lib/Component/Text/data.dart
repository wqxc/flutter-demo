import 'package:flutter/material.dart';
/*
  文本组件的作用是就是显示文本，不像HTML那样将所有的文本放在 div等标签内。
  Flutter中所有的文本都要放在 Text 组件中。
  再次说明了一点，flutter中所有的东西都是一个组件。
*/ 

/*
  new Text(
    '这里是要显示的文本',
    textAlign:TextAlign.left/right, 表示文本的对齐方式，左对齐，或者是右对齐
    textDirection:TextDirection.rtl/ltl  文字从左开始，还是从右开始书写
    textScaleFactor: double 类型  字体的放大比率
    overflow:TextOverflow.ellipsis/clip/hade/visible, 表示文本超出的时候的显示方式,省略，裁剪，隐藏，显示
    maxLines:1, 表示文本最多显示多少行，值为int类型的

    // 这里是为文字本身进行处理的样式类
    style:TextStyle(
      fontStyle:FontStyle.normal/italic  字体的样式 普通字体/斜体
      fontSize:12.0, 文字的字体大小
      color:Colors.black, 字体颜色
      backgroundColor:Colors.yellow, 字体的背景颜色
      wordSpacing:10.0,只针对英文单词生效的字间距
      letterSpacing:10.0, 对中文生效的字间距
      decoration:TextDecoration.none/lineThrough/overline/underline  字体的装饰线:没有装饰/删除线/上划线/下划线
      decorationColor: Colors.blue 字体装饰线的颜色
      decorationStyle: TextDecorationStyle.solid/double/dotted/dashed/wavy  实线/双线/虚线(点虚线)/虚线（短横虚线）/波浪线
    )
  )
*/ 

class MyTextData extends StatelessWidget {
  const MyTextData({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Column(
      children:<Widget>[
        new SizedBox(height:10.0),
        new Container(
          padding:EdgeInsets.all(10.0),
          decoration:BoxDecoration(
            color:Colors.red,
            border:Border.all(
              color:Colors.red,
              width:2.0,
            )
          ),
          child:new Row(
            children:<Widget>[
              new Expanded(
                child:new Text(
                  '《鹿柴》王维 空山不见人，但闻人语响。反影入深林，复照青苔上。',
                  textAlign:TextAlign.left,
                  textDirection:TextDirection.rtl,
                  style:TextStyle(
                    fontSize:12.0,
                    color:Colors.black,
                    backgroundColor:Colors.yellow,
                  )
                )
              ),
            ]
          )
        ),
        new SizedBox(height:10.0),
        new Container(
          padding:EdgeInsets.all(10.0),
          decoration:BoxDecoration(
            color:Colors.blue,
            border:Border.all(
              color:Colors.blue,
              width:2.0,
            )
          ),
          child:new Row(
            children:<Widget>[
              new Expanded(
                child:new Text(
                  '《鹿柴》王维 空山不见人，但闻人语响。反影入深林，复照青苔上。《鹿柴》王维 空山不见人，但闻人语响。反影入深林，复照青苔上。',
                  textAlign:TextAlign.left,
                  textScaleFactor:1.2,
                  overflow:TextOverflow.ellipsis,
                  maxLines:1,
                  style:TextStyle(
                    fontStyle:FontStyle.italic,
                    decoration:TextDecoration.underline,
                    decorationStyle:TextDecorationStyle.wavy,
                    fontSize:12.0,
                    color:Colors.black,
                    backgroundColor:Colors.green,
                    // wordSpacing:10.0,
                    // letterSpacing:10.0,
                  )
                )
              ),
            ]
          )
        ),
              new SizedBox(height:10.0),
        new Container(
          padding:EdgeInsets.all(10.0),
          decoration:BoxDecoration(
            color:Colors.pink,
            border:Border.all(
              color:Colors.pink,
              width:2.0,
            )
          ),
          child:new Row(
            children:<Widget>[
              new Expanded(
                child:new Text(
                  '《鹿柴》王维 空山不见人，但闻人语响。反影入深林，复照青苔上。《鹿柴》王维 空山不见人，但闻人语响。反影入深林，复照青苔上。',
                  textAlign:TextAlign.left,
                  style:TextStyle(
                    fontSize:12.0,
                    color:Colors.black,
                    backgroundColor:Colors.orange,
                    // wordSpacing:10.0,
                    letterSpacing:10.0,
                  )
                )
              ),
            ]
          )
        )
      ]
    );
  }
}