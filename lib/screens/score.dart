import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/screens/category.dart';
import 'package:quiz_app_flutter/screens/check_answers.dart';

class resultpage extends StatefulWidget {
  int marks,len,val,corr_ans,wrong_ans;
  resultpage({required this.marks, required this.len,required this.val,required this.corr_ans,required this.wrong_ans}) : super();
  @override
  _resultpageState createState() => _resultpageState(marks,len,val,corr_ans,wrong_ans);
}

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.white,
  primary: Colors.black,
  minimumSize: Size(88, 50),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
  ),
);

class _resultpageState extends State<resultpage> {

  List<String> images = [
    "images/excellent_badge.png",
    "images/good_badge.png",
    "images/workhard_badge.png",
  ];

  String message="You Should Try Hard..";
  late String image = images[0];
  int total = 0;

  @override
  void initState(){
    print("val"+val.toString());
    if((marks/(len*5))*100 < 30){
      image = images[2];
      total=len*5;
      message = "You Should Try Hard..\n" + "You Scored $marks/$total \n" + "Correct answers $corr_ans/$len\n";
    }
    else if((marks/(len*5))*100 < 65){
      total=len*5;
      image = images[1];
      message = "You Can Do Better..\n" + "You Scored $marks/$total \n" + "Correct answers $corr_ans/$len\n";
    }
    else{
      image = images[0];
      total=len*5;
      message = "You Did Very Well..\n" + "You Scored $marks/$total \n" + "Correct answers $corr_ans/$len\n";
    }
    super.initState();
  }

  int marks;
  int len;
  int val;
  int corr_ans;
  int wrong_ans;
  _resultpageState(this.marks, this.len,this.val,this.corr_ans,this.wrong_ans);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent[100],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Result",
          style: TextStyle(
              fontSize: 30.0,fontWeight: FontWeight.bold,fontFamily: 'Acme'
          ),
        ),
      ),
      body: ListView(
        children:[ Column(
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0,bottom: 20.0),
                    child: Material(
                      child: Container(
                        width: 200.0,
                        height: 200.0,
                        color: Colors.deepOrangeAccent[100],
                        child: ClipRect(
                          child: Image(
                            image: AssetImage(
                              image,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 15.0,bottom: 15.0,left: 15.0),
                      child: Center(
                        child: Text(
                          message,
                          style: TextStyle(
                            fontSize: 30.0,
                            fontFamily: "Acme",
                          ),
                        ),
                      )
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0, bottom: 20.0),
              child: ElevatedButton(
                style: raisedButtonStyle,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Padding(padding: EdgeInsets.only(
                    top: 7.0, bottom: 7.0, left: 10.0, right: 10.0),
                    child: Text('Restart Quiz', style: TextStyle(fontSize: 25.0,
                        color: Colors.white,
                        fontFamily: 'Acme',
                        fontWeight: FontWeight.bold))),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 30.0),
              child: ElevatedButton(
                style: raisedButtonStyle,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Answers(val:val)),
                  );
                },
                child: Padding(padding: EdgeInsets.only(
                    top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
                    child: Text('Review  All  Answers', style: TextStyle(fontSize: 25.0,
                        color: Colors.white,
                        fontFamily: 'Acme',
                        fontWeight: FontWeight.bold))),
              ),
            ),
          ],
        ),
    ],
      ),
    );
  }
}

