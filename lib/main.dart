import 'package:flutter/material.dart';
import 'package:prac_app/questions.dart';
import 'questionsList.dart';

void main() {
  runApp(PersonalityMatch());
}

class PersonalityMatch extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Quiz App"),
        backgroundColor: Colors.blue[700],
        centerTitle: true,
      ),
      body: Personal(),
    ));
  }
}

class Personal extends StatefulWidget {
  PersonalState createState() {
    return PersonalState();
  }
}

class PersonalState extends State<Personal> {
  int val = 0;
  int score = 0;
  void total() {
    setState(() {
      score += 10;
    });
  }

  void next() {
    setState(() {
      val++;
    });
  }

  Widget build(BuildContext context) {
    QuestionsList obj = QuestionsList();
    return val < obj.questData.length
        ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                child: Text(
                  obj.getQuest(val),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontFamily: "SansPro"),
                ),
                margin: EdgeInsets.all(20),
                color: Colors.blueGrey,
              ),

              //put answer in column for proper look and input sized ox for space or alternate edgesinsets
              FlatButton(
                  child: Container(
                      width: double.infinity,
                      color: Colors.blue[100],
                      child: Text(
                        obj.getAns1(val),
                        style: TextStyle(fontSize: 18, fontFamily: "SansPro"),
                      ),
                      alignment: Alignment.topCenter),
                  onPressed: () {
                    if (obj.getAns1(val) == "Infrastructure as a Service" ||
                        obj.getAns1(val) == "Platform as a Service" ||
                        obj.getAns1(val) == "Software as a Service" ||
                        obj.getAns1(val) == "Object Oriented Programming") {
                      total();
                    }

                    next();
                    
                  }),

              FlatButton(
                  child: Container(
                    color: Colors.blue[100],
                    alignment: Alignment.topCenter,
                    // width: double.infinity,
                    child: Text(
                      obj.getAns2(val),
                      style: TextStyle(fontSize: 18, fontFamily: "SansPro"),
                    ),
                  ),
                  onPressed: () {
                    if (obj.getAns2(val) == "Infrastructure as a Service" ||
                        obj.getAns2(val) == "Platform as a Service" ||
                        obj.getAns2(val) == "Software as a Service" ||
                        obj.getAns3(val) == "Object Oriented Programming") { total();}
                   
                    next();
                    
                  }),
              FlatButton(
                  child: Container(
                    color: Colors.blue[100],
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(
                      obj.getAns3(val),
                      style: TextStyle(fontSize: 18, fontFamily: "SansPro"),
                    ),
                  ),
                  onPressed: () {
                    if (obj.getAns3(val) == "Infrastructure as a Service" ||
                        obj.getAns3(val) == "Platform as a Service" ||
                        obj.getAns3(val) == "Software as a Service" ||
                        obj.getAns3(val) == "Object Oriented Programming") {
                      total();
                    }
                    next();
                   
                  }),
            ],
          )
        : SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  
                  alignment: Alignment.center,
                  color: Colors.red, child: Text("Your Score is $score",style: TextStyle(fontFamily: "SansPro",fontSize: 25),),
                  margin: EdgeInsets.only(left:60,right: 60),
                ),
                Container(
                  child: FlatButton(
                    color: Colors.blue,
                    child: Text("TRY AGAIN",style: TextStyle(fontSize:30),),
                    onPressed: () {
                      setState(() {
                        val = 0;
                        score = 0;
                      });
                    },
                  ),
                    )
              ],
            ),
          );
  }
}

//
