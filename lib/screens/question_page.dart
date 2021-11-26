import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/screens/score.dart';
import 'package:path_provider/path_provider.dart';
//import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:page_transition/page_transition.dart';


class QuestionPage extends StatelessWidget {

  int val;
  QuestionPage(this.val);
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


  @override
  Widget build(BuildContext context) {
    setasset();
    // and now we return the FutureBuilder to load and decode JSON
    return FutureBuilder(
      future:
      DefaultAssetBundle.of(context).loadString(assettoload, cache: false),
      builder: (context, snapshot) {
        List mydata = json.decode(snapshot.data.toString());
        if (mydata == null) {
          return Scaffold(
            backgroundColor: Colors.deepOrangeAccent[100],
            body: Center(
              child: Text(
                "Coming soon!!",
              ),
            ),
          );
        } else {
          return quizpage(mydata: mydata, header : header,val:val);
        }
      },
    );
  }
}

class quizpage extends StatefulWidget {
  final List mydata;
  final String header;
  final int val;

  quizpage({required this.mydata, required this.header,required this.val}) : super();

  AudioCache cache = new AudioCache();
  @override
  _quizpageState createState() => _quizpageState(mydata,header,val);
}

class _quizpageState extends State<quizpage> {
  final List mydata;
  final String header;
  final int val;
  _quizpageState(this.mydata,this.header,this.val);

  Color colortoshow = Colors.indigoAccent;
  Color right = Colors.green.shade900;
  Color wrong = Colors.red.shade900;
  int marks = 0;
  int i = 1;
  bool disableAnswer = false;
  // extra varibale to iterate
  int j = 1;
  int timer = 30;
  String showtimer = "30";
  var random_array;
  int corr_ans=0;
  int wrong_ans=0;

  Map<String, Color> btncolor = {
    "a": Colors.black,
    "b": Colors.black,
    "c": Colors.black,
    "d": Colors.black,
  };

  bool canceltimer = false;

  String mp3Uri = '';
  void wrongAnswer(){
    AudioPlayer player = AudioPlayer();
    player.play(mp3Uri);
  }

  void _loadSound() async {
    final ByteData data = await rootBundle.load('audio/Wrong.mp3');
    Directory tempDir = await getTemporaryDirectory();
    File tempFile = File('${tempDir.path}/Wrong.mp3');
    await tempFile.writeAsBytes(data.buffer.asUint8List(), flush: true,);
    mp3Uri = tempFile.uri.toString();
  }

  genrandomarray(){
    var distinctIds = [];
    var rand = new Random();
    for (int i = 0; ;) {
      distinctIds.add(rand.nextInt(mydata[0].length));
      random_array = distinctIds.toSet().toList();
      if(random_array.length < mydata[0].length){
        continue;
      }else{
        break;
      }
    }
    print(random_array);
    i = random_array[0];
  }

  @override
  void initState() {
    starttimer();
    genrandomarray();
    super.initState();
    _loadSound();
  }

  // overriding the setstate function to be called only if mounted
  @override
  void setState(fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  void starttimer() async {
    const onesec = Duration(seconds: 1);
    Timer.periodic(onesec, (Timer t) {
      setState(() {
        if (timer < 1) {
          t.cancel();
          nextquestion();
        } else if (canceltimer == true) {
          t.cancel();
        } else {
          timer = timer - 1;
        }
        showtimer = timer.toString();
      });
    });
  }
  int done = 0;
  void nextquestion() {
    canceltimer = false;
    timer = 30;
    setState(() {
      if (j < mydata[0].length) {
        i = random_array[j];
        count=count+1;
        j++;
      } else {
        if(done==0){
          done += 1;
          print("calling result page");
          Navigator.push(
            context,
            PageTransition(
              type: PageTransitionType.rightToLeft,
              child: resultpage(marks: marks,len: mydata[0].length,val:val,corr_ans:corr_ans,wrong_ans:wrong_ans),
            ),
          );
        }
      }
      btncolor["a"] = Colors.black;
      btncolor["b"] = Colors.black;
      btncolor["c"] = Colors.black;
      btncolor["d"] = Colors.black;
      disableAnswer = false;
    });
    starttimer();
  }

  Future<void> playSound() async {
    await widget.cache.play('Right.mp3',
        volume: 500, mode: PlayerMode.MEDIA_PLAYER);
  }

  void checkanswer(String k) {
    if (mydata[2][i.toString()] == k) {
      marks = marks + 5;
      colortoshow = right;
      corr_ans+=1;
      setState(() {
        playSound();
        btncolor[k] = colortoshow;
        canceltimer = true;
        disableAnswer = true;
      });
    } else {
      wrong_ans+=1;
      colortoshow = wrong;
      wrongAnswer();
      setState(() {
        btncolor[k] = colortoshow;
        btncolor[mydata[2][i.toString()]] = right;
        canceltimer = true;
        disableAnswer = true;
      });
    }
    Timer(Duration(seconds: 2), nextquestion);
  }

  Widget choicebutton(String k) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20.0,
      ),
      child: MaterialButton(
        onPressed: () => checkanswer(k),
        child: Text(
          mydata[1][i.toString()][k],
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Acme",
            fontSize: 20.0,
          ),
          maxLines: 1,
        ),
        color: btncolor[k],
        splashColor: Colors.black,
        highlightColor: Colors.black,
        minWidth: 350.0,
        height: 55.0,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      ),
    );
  }
  int count=1;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent[100],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(header,style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
      ),
        body: ListView(
          children: [
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 30.0,vertical: 5.0),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 5.0,top: 5.0),
                  child: Text.rich(
                    TextSpan(
                      text: "Question "+count.toString(),
                      style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,fontFamily: 'Acme'),
                      children: [
                        TextSpan(
                          text: "/"+mydata[0].length.toString(),
                          style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,fontFamily: 'Acme'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            Padding(
              padding: const EdgeInsets.only(top: 0.0),
              child: Divider(thickness: 1.5)
            ),
              Container(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0,bottom: 20.0,left: 30.0,right: 30.0),
                  child: Text(
                    mydata[0][i.toString()],
                    style: TextStyle(
                      fontSize: 25.0,
                      fontFamily: "Acme",
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              AbsorbPointer(
                absorbing: disableAnswer,
                child: InkWell(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      choicebutton('a'),
                      choicebutton('b'),
                      choicebutton('c'),
                      choicebutton('d')
                    ],
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topCenter,
                child: Center(
                  child: Text(
                    showtimer,
                    style: TextStyle(
                      fontSize: 45.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Acme',
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
          ],
        )
    );
  }
}
