import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'globals.dart' as globals;

class Answers extends StatefulWidget {
  int val;
  Answers({required this.val}) : super();

  @override
  _AnswersState createState() => _AnswersState(val);
}

class _AnswersState extends State<Answers> {
  int val;
  _AnswersState(this.val);

  String header ='';
  String assettoload="assets/english/eng_t1_u1_prose.json";

  setasset() {
    if (val == 1) {
      assettoload = "assets/english/eng_t1_u1_prose.json";
      header = 'Earth, The Desolated Home';
    }
    else if (val == 2) {
      assettoload = "assets/english/eng_t1_u1_poem.json";
      header = 'Beyond the Universe';
    }
    else if (val == 3) {
      assettoload = "assets/english/eng_t1_u1_sup.json";
      header = 'Lost in Space';
    }
    else if (val == 4) {
      assettoload = "assets/english/eng_t1_u2_prose.json";
      header = 'Trip to My Grandparents Village';
    }
    else if (val == 5) {
      assettoload = "assets/english/eng_t1_u2_poem.json";
      header = 'Farmer’s Friend';
    }
    else if (val == 6) {
      assettoload = "assets/english/eng_t1_u2_sup.json";
      header = 'The Farmer and his Daughters';
    }
    else if (val == 7) {
      assettoload = "assets/english/eng_t1_u3_prose.json";
      header = 'The Guardians of the Nation';
    }
    else if (val == 8) {
      assettoload = "assets/english/eng_t1_u3_poem.json";
      header = 'Patriotism';
    }
    else if (val == 9) {
      assettoload = "assets/english/eng_t1_u3_sup.json";
      header = 'The Legend of Jaswantgarh';
    }
    else if (val == 10) {
      assettoload = "assets/english/eng_t2_u1_prose.json";
      header = 'The Gift';
    }
    else if (val == 11) {
      assettoload = "assets/english/eng_t2_u1_poem.json";
      header = 'Mother Nature';
    }
    else if (val == 12) {
      assettoload = "assets/english/eng_t2_u1_sup.json";
      header = 'The Two Pigeons';
    }
    else if (val == 13) {
      assettoload = "assets/english/eng_t2_u2_prose.json";
      header = 'The Strength in his Weakness';
    }
    else if (val == 14) {
      assettoload = "assets/english/eng_t2_u2_poem.json";
      header = 'The Swimmer';
    }
    else if (val == 15) {
      assettoload = "assets/english/eng_t2_u2_sup.json";
      header = 'Practice Makes a Man Perfect';
    }
    else if (val == 16) {
      assettoload = "assets/english/eng_t3_u1_prose.json";
      header = 'Five Detectives';
    }
    else if (val == 17) {
      assettoload = "assets/english/eng_t3_u1_poem.json";
      header = 'Why Questions';
    }
    else if (val == 18) {
      assettoload = "assets/english/eng_t3_u1_sup.json";
      header = 'The Witty Sparrow';
    }
    else if (val == 19) {
      assettoload = "assets/english/eng_t3_u2_prose.json";
      header = 'The Cracked Coffee Cup';
    }
    else if (val == 20) {
      assettoload = "assets/english/eng_t3_u2_poem.json";
      header = 'The Dreamer';
    }
    else if (val == 21) {
      assettoload = "assets/english/eng_t3_u2_sup.json";
      header = 'The New Start';
    }
    else if (val == 22) {
      assettoload = "assets/english/eng_t3_u3_prose.json";
      header = 'The Monster Tree';
    }
    else if (val == 23) {
      assettoload = "assets/english/eng_t3_u3_poem.json";
      header = 'Social Responsibility';
    }
    else if (val == 24) {
      assettoload = "assets/english/eng_t3_u3_sup.json";
      header = 'The Case of the Missing Water';
    }
    else if (val == 25) {
      assettoload = "assets/science/sci_t1_u1.json";
      header = 'Organ Systems';
    }
    else if (val == 26) {
      assettoload = "assets/science/sci_t1_u2.json";
      header = 'Matter and Materials';
    }
    else if (val == 27) {
      assettoload = "assets/science/sci_t1_u3.json";
      header = 'Energy';
    }
    else if (val == 28) {
      assettoload = "assets/science/sci_t1_u4.json";
      header = 'Science in Everyday Life';
    }
    else if (val == 29) {
      assettoload = "assets/science/sci_t2_u1.json";
      header = 'Food';
    }
    else if (val == 30) {
      assettoload = "assets/science/sci_t2_u2.json";
      header = 'Water';
    }
    else if (val == 31) {
      assettoload = "assets/science/sci_t2_u3.json";
      header = 'Plants';
    }
    else if (val == 32) {
      assettoload = "assets/science/sci_t3_u1.json";
      header = 'Our Environment';
    }
    else if (val == 33) {
      assettoload = "assets/science/sci_t3_u2.json";
      header = 'Animals';
    }
    else if (val == 34) {
      assettoload = "assets/science/sci_t3_u3.json";
      header = 'Air';
    }
    else if (val == 35) {
      assettoload = "assets/social/soc_t1_u1.json";
      header = 'Our Earth';
    }
    else if (val == 36) {
      assettoload = "assets/social/soc_t1_u2.json";
      header = 'Towards History';
    }
    else if (val == 37) {
      assettoload = "assets/social/soc_t1_u3.json";
      header = 'Good Citizen';
    }
    else if (val == 38) {
      assettoload = "assets/social/soc_t1_u4.json";
      header = 'Atmosphere';
    }
    else if (val == 39) {
      assettoload = "assets/social/soc_t2_u1.json";
      header = 'Air';
    }
    else if (val == 40) {
      assettoload = "assets/social/soc_t2_u2.json";
      header = 'Air';
    }
    else if (val == 41) {
      assettoload = "assets/social/soc_t2_u3.json";
      header = 'Air';
    }
    else if (val == 42) {
      assettoload = "assets/social/soc_t3_u1.json";
      header = 'Air';
    }
    else if (val == 43) {
      assettoload = "assets/social/soc_t3_u2.json";
      header = 'Air';
    }
    else if (val == 44) {
      assettoload = "assets/social/soc_t3_u3.json";
      header = 'Air';
    }
    else if (val == 45) {
      assettoload = "assets/maths/maths_t1_u1.json";
      header = 'Geometry';
    }
    else if (val == 46) {
      assettoload = "assets/maths/maths_t1_u2.json";
      header = 'Numbers';
    }
    else if (val == 47) {
      assettoload = "assets/maths/maths_t1_u3.json";
      header = 'Patterns';
    }
    else if (val == 48) {
      assettoload = "assets/maths/maths_t1_u4.json";
      header = 'Measurements';
    }
    else if (val == 49) {
      assettoload = "assets/maths/maths_t1_u5.json";
      header = 'Time';
    }
    else if (val == 50) {
      assettoload = "assets/maths/maths_t1_u6.json";
      header = 'Information Processing';
    }
    else if (val == 51) {
      assettoload = "assets/maths/maths_t2_u1.json";
      header = 'Geometry';
    }
    else if (val == 52) {
      assettoload = "assets/maths/maths_t2_u2.json";
      header = 'Numbers';
    }
    else if (val == 53) {
      assettoload = "assets/maths/maths_t2_u3.json";
      header = 'Patterns';
    }
    else if (val == 54) {
      assettoload = "assets/maths/maths_t2_u4.json";
      header = 'Measurements';
    }
    else if (val == 55) {
      assettoload = "assets/maths/maths_t2_u5.json";
      header = 'Interconcept';
    }
    else if (val == 56) {
      assettoload = "assets/maths/maths_t2_u6.json";
      header = 'Information Processing';
    }
    else if (val == 57) {
      assettoload = "assets/maths/maths_t3_u1.json";
      header = 'Geometry';
    }
    else if (val == 58) {
      assettoload = "assets/maths/maths_t3_u2.json";
      header = 'Numbers';
    }
    else if (val == 59) {
      assettoload = "assets/maths/maths_t3_u3.json";
      header = 'Measurements';
    }
    else if (val == 60) {
      assettoload = "assets/maths/maths_t3_u4.json";
      header = 'Algebra';
    }
    else if (val == 61) {
      assettoload = "assets/maths/maths_t3_u5.json";
      header = 'Money';
    }
    else if (val == 62) {
      assettoload = "assets/maths/maths_t3_u6.json";
      header = 'Fractions';
    }
    else {
      assettoload = "assets/english/eng_t1_u1_prose.json";
    }
  }

  List mydata=[];
  List correct_ans=[];
  int i=0;
  int len=0;

  Future<void> readJson() async {
    setasset();
    String response = await rootBundle.loadString(assettoload);
    mydata = json.decode(response);
    len=mydata[1].length;
    setState(() {
    });

  }

  //Future request() async{
    //var val=DefaultAssetBundle.of(context).loadString(assettoload, cache: false);
    //List mydata = json.decode(val);
    //setState(() {
      //data = mydata[0][0.toString()];
      //correct_ans = mydata[2][0.toString()];
    //});
  //  print(mydata);
//  }

  @override
  void setState(fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  void initState() {
    this.readJson();
  }

  @override
  Widget build(BuildContext context) {
    setasset();
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent[100],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(header,style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
        ),
      body: Container(
        child: ListView.separated(
          itemCount: len,
          itemBuilder: (BuildContext context,i){
            return ListTile(
              title: Padding(
                padding: const EdgeInsets.only(top: 10.0,bottom: 5.0),
                child: Text((i+1).toString()+".  "+mydata[0][i.toString()],style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,fontFamily: 'Acme')),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8.0,bottom: 10.0),
                child: Text("Correct Answer :  "+mydata[1][i.toString()][mydata[2][i.toString()].toString()],style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.bold,fontFamily: 'Acme')),
              ),
            );
          },
        separatorBuilder: (BuildContext context ,i){
            return Divider(
              color: Colors.black26,
              thickness: 2.0,
            );
        }
      ),

      ),
    );
  }
}
