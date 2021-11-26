import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/main.dart';
import 'package:quiz_app_flutter/screens/english.dart';
import 'package:quiz_app_flutter/screens/science.dart';
import 'package:quiz_app_flutter/screens/social.dart';
import 'package:quiz_app_flutter/screens/maths.dart';
import 'package:page_transition/page_transition.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent[100],
      appBar: AppBar(
        title: Text("Category",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,fontFamily: 'Acme')),
        backgroundColor: Colors.transparent,
      ),
      body:Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height/4,
                    width: MediaQuery.of(context).size.width/2.7,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRight,
                            child: English(),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(30.0)
                        ),
                        height: 130.0,
                        width: 130.0,
                        child: Center(child: Text("English",style: TextStyle(color: Colors.white,fontSize: 35.0,fontWeight: FontWeight.bold,fontFamily: 'Acme'))),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height/4,
                    width: MediaQuery.of(context).size.width/2.7,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRight,
                            child: Science(),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(30.0)
                        ),
                        height: 130.0,
                        width: 130.0,
                        child: Center(child: Text("Science",style: TextStyle(color: Colors.white,fontSize: 35.0,fontWeight: FontWeight.bold,fontFamily: 'Acme'))),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height/4,
                    width: MediaQuery.of(context).size.width/2.7,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRight,
                            child: Social(),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(30.0)
                        ),
                        height: 130.0,
                        width: 130.0,
                        child: Center(child: Text("Social \nScience",style: TextStyle(color: Colors.white,fontSize: 35.0,fontWeight: FontWeight.bold,fontFamily: 'Acme'))),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height/4,
                    width: MediaQuery.of(context).size.width/2.7,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRight,
                            child: Maths(),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(30.0)
                        ),
                        height: 130.0,
                        width: 130.0,
                        child: Center(child: Text("Maths",style: TextStyle(color: Colors.white,fontSize: 35.0,fontWeight: FontWeight.bold,fontFamily: 'Acme'))),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}

