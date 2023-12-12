import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'article1.dart';
import 'article2.dart';
import 'article3.dart';
import 'article4.dart';

class Suggestions extends StatelessWidget {
  const Suggestions({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Suggestions"),
          backgroundColor: Colors.deepOrange,
        ),
        body: Container(
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
              Padding(padding: EdgeInsets.only(top: 15.0)),
              Container(
                  //margin: const EdgeInsets.symmetric(vertical: 0.0),
                  height: 480.0,
                  child: ListView(
                    // Βαζω οριζόντιο scroll.
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        child: Card(
                            child: Column(
                          children: <Widget>[
                            ClipRRect(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => article1()),
                                  );
                                },
                                child: Image(
                                  image: AssetImage(
                                      'assets/images/depression.png'),
                                  height: 350,
                                  width: 330,
                                ),
                              ),
                            ),
                            RichText(
                                text: TextSpan(
                              text: "What is depression?",
                              style: TextStyle(
                                  color: Colors.deepOrange, fontSize: 25),
                              children: <TextSpan>[
                                TextSpan(
                                    text: '\n Some of these comments may \n '
                                        'be well-intentioned but they \n show a lack of understanding of\n  the nature of depression.',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15)),
                              ],
                            )),
                          ],
                        )),
                      ),
                      Container(
                        child: Card(
                            child: Column(
                          children: <Widget>[
                            ClipRRect(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => article2()),
                                  );
                                },
                                child: Image(
                                  image:
                                      AssetImage('assets/images/problem.png'),
                                  height: 350,
                                  width: 330,
                                ),
                              ),
                            ),
                            RichText(
                                text: TextSpan(
                              text: "Why is this a problem?",
                              style: TextStyle(
                                  color: Colors.deepOrange, fontSize: 25),
                              children: <TextSpan>[
                                TextSpan(
                                    text:
                                        '\n The misunderstanding occurs because \n just about everyone has experienced \n sadness or “feeling down.”',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15)),
                              ],
                            )),
                          ],
                        )),
                      ),
                      Container(
                        child: Card(
                            child: Column(
                          children: <Widget>[
                            ClipRRect(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => article3()),
                                  );
                                },
                                child: Image(
                                  image: AssetImage('assets/images/stress.png'),
                                  height: 350,
                                  width: 330,
                                ),
                              ),
                            ),
                            RichText(
                                text: TextSpan(
                              text: "When is depression caused by stress? ",
                              style: TextStyle(
                                  color: Colors.deepOrange, fontSize: 20),
                              children: <TextSpan>[
                                TextSpan(
                                    text:
                                        '\n Although the above \n conditions appear to be \n biological conditions that are  \n caused by genetic predispositions ',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15)),
                              ],
                            )),
                          ],
                        )),
                      ),
                      Container(
                        child: Card(
                            child: Column(
                          children: <Widget>[
                            ClipRRect(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => article4()),
                                  );
                                },
                                child: Image(
                                  image: AssetImage('assets/images/why.png'),
                                  height: 350,
                                  width: 330,
                                ),
                              ),
                            ),
                            RichText(
                                text: TextSpan(
                              text:
                                  "Why does it seem that \ndepression is caused by stress?",
                              style: TextStyle(
                                  color: Colors.deepOrange, fontSize: 20),
                              children: <TextSpan>[
                                TextSpan(
                                    text:
                                        '\n The fact is that the depressive \n disorders, as is true of most of  \nthe physical disorders,  \nare reactive to stress. ',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15)),
                              ],
                            )),
                          ],
                        )),
                      ),
                    ],
                  )),
            ]))));
  }
}
