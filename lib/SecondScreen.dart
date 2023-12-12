import 'dart:developer';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'Suggestions.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Depression CBT"),
          backgroundColor: Colors.deepOrange,
        ),
        body: Center(
            child: ListView(
          // Βαζω οριζόντιο scroll.
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    // borderRadius: BorderRadius.circular(100),
                    ),
                child: Column(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(bottom: 20)),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(150.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Suggestions()),
                          );
                        },
                        child: Image(
                          image: AssetImage('assets/images/suggestions.jpg'),
                          height: 230,
                          width: 230,
                        ),
                      ),
                    ),
                    Text('Suggestions'),
                  ],
                ),
                color: Colors.deepOrange,
              ),
              decoration: new BoxDecoration(
                borderRadius: new BorderRadius.circular(8.0),
                color: Colors.deepOrange,
              ),
              height: 300,
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    // borderRadius: BorderRadius.circular(100),
                    ),
                child: Column(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(bottom: 20)),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(150.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Questionnaire(0)),
                          );
                        },
                        child: Image(
                          image: AssetImage('assets/images/Questionnaire.png'),
                          height: 230,
                          width: 230,
                        ),
                      ),
                    ),
                    Text('Questionnaire'),
                  ],
                ),
                color: Colors.deepOrange,
              ),
              decoration: new BoxDecoration(
                borderRadius: new BorderRadius.circular(8.0),
                color: Colors.deepOrange,
              ),
              height: 300,
            ),
          ],
        )));
  }
}

class Questionnaire extends StatelessWidget {
  var count;
  Questionnaire(int count) {
    this.count = count;
    print(count);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(" Questionnaire"),
          backgroundColor: Colors.deepOrange,
        ),
        body: Container(
          child: Center(
            // Χρησιμοποιουμε το FutureBuilder και το Future για να κανουμε load το Json
            child: FutureBuilder(
                future: DefaultAssetBundle.of(context)
                    .loadString('assets/data/questionnaire.json'),
                builder: (context, snapshot) {
                  //κραταει ενα snapshot της τωρινης καταστασης του future
                  // Decode the JSON
                  var newData = json.decode(snapshot.data
                      .toString()); //το snapshot.data μας το δινει το flutter και παινρουμε τα δεδομενα της καταστασης
                  //του future εδω δηλαδη τα data του json αρχειου.
                  return ListView.builder(
                    // Χρησιμοποιουμε τον constructor builder γιατι δεν ξερουμε το πληθος των αντικειμενων

                    itemBuilder: (BuildContext context, int index) {
                      index = this.count;
                      return Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment
                              .stretch, //να καλυψει το μικροτερο μεγεθος στον cross axis (οριζοντιο αξονα)
                          children: <Widget>[
                            Text(
                                "\n Over the last 2 weeks, how often have you benn bothered by any of the following problems? "),
                            Text(
                              "\n" + newData[index]['questionText'],
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 60, left: 60),
                              child: TextButton(
                                  child: Text(
                                    " " +
                                        newData[index]['answers'][0].toString(),
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  onPressed: () {
                                    if (index <= 7) {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              Questionnaire(++index),
                                        ),
                                      );
                                    } else {
                                      Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ThirdScreen()),
                                        (Route<dynamic> route) => false,
                                      );
                                    }
                                    ;
                                  },
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.deepOrange),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                        side: BorderSide(color: Colors.white),
                                      )))),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 60, left: 60),
                              child: TextButton(
                                  child: Text(
                                    " " +
                                        newData[index]['answers'][1].toString(),
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  onPressed: () {
                                    if (index <= 7) {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              Questionnaire(++index),
                                        ),
                                      );
                                    } else {
                                      Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ThirdScreen()),
                                        (Route<dynamic> route) => false,
                                      );
                                    }
                                    ;
                                  },
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.deepOrange),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                        side: BorderSide(color: Colors.white),
                                      )))),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 60, left: 60),
                              child: TextButton(
                                  child: Text(
                                    " " +
                                        newData[index]['answers'][2].toString(),
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  onPressed: () {
                                    if (index <= 7) {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              Questionnaire(++index),
                                        ),
                                      );
                                    } else {
                                      Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ThirdScreen()),
                                        (Route<dynamic> route) => false,
                                      );
                                    }
                                    ;
                                  },
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.deepOrange),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                        side: BorderSide(color: Colors.white),
                                      )))),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 60, left: 60),
                              child: TextButton(
                                  child: Text(
                                    " " +
                                        newData[index]['answers'][3].toString(),
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  onPressed: () {
                                    if (index <= 7) {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              Questionnaire(++index),
                                        ),
                                      );
                                    } else {
                                      Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ThirdScreen()),
                                        (Route<dynamic> route) => false,
                                      );
                                    }
                                    ;
                                  },
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.deepOrange),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                        side: BorderSide(color: Colors.white),
                                      )))),
                            )

                            //Text("Gender: " + newData[index]['answers[1]'])
                          ],
                        ),
                      );
                    },
                    itemCount: newData == null ? 0 : 1,
                    //ελεγχος αν η τιμη ειναι null αλλιως δινουμε
                    //το πληθος των αντικειμενων της λιστας που θελουμε να γινουν build στο itemCount
                  );
                }),
          ),
        ));
  }
}

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Depression CBT"),
          backgroundColor: Colors.deepOrange,
        ),
        body: Center(
            child: ListView(
          // Βαζω οριζόντιο scroll.
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    // borderRadius: BorderRadius.circular(100),
                    ),
                child: Column(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(bottom: 20)),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(150.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Suggestions()),
                          );
                        },
                        child: Image(
                          image: AssetImage('assets/images/suggestions.jpg'),
                          height: 230,
                          width: 230,
                        ),
                      ),
                    ),
                    Text('Suggestions'),
                  ],
                ),
                color: Colors.deepOrange,
              ),
              decoration: new BoxDecoration(
                borderRadius: new BorderRadius.circular(8.0),
                color: Colors.deepOrange,
              ),
              height: 300,
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    // borderRadius: BorderRadius.circular(100),
                    ),
                child: Column(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(bottom: 20)),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(150.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Questionnaire(0)),
                          );
                        },
                        child: Image(
                          image: AssetImage('assets/images/Questionnaire.png'),
                          height: 230,
                          width: 230,
                        ),
                      ),
                    ),
                    Text('Questionnaire'),
                  ],
                ),
                color: Colors.deepOrange,
              ),
              decoration: new BoxDecoration(
                borderRadius: new BorderRadius.circular(8.0),
                color: Colors.deepOrange,
              ),
              height: 300,
            ),
            TextButton(
                child: Text("Homepage", style: TextStyle(color: Colors.black)),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => SecondScreen()),
                    (Route<dynamic> route) => false,
                  );
                },
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.deepOrange),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      side: BorderSide(color: Colors.white),
                    )))),
          ],
        )));
  }
}
