import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class article3 extends StatelessWidget {
  const article3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("When is depression caused by stress"),
          backgroundColor: Colors.deepOrange,
        ),
        body: Container(
          child: Text(
              "  Although the above conditions appear to be biological conditions that are caused by genetic predispositions, some people may experience temporary symptoms of depression due to stress. Such a condition is typically diagnosed as an adjustment disorder with depression or in the case of a traumatic experience may be diagnosed as an acute stress reaction. \n  An adjustment disorder may involve the depressive symptoms but the symptoms can be traced to a single event or a period of stress in a person's life. In addition, an adjustment disorder is not likely to be recurrent unless triggered by other events or periods of stress. However, this condition should not be confused with a depressive illness which has an underlying biological cause as we understand it today. \n  "),
        ));
  }
}
