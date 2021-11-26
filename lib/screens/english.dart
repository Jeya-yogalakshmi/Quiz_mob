import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/screens/question_page.dart';
import 'package:page_transition/page_transition.dart';

class English extends StatefulWidget {
  const English({Key? key}) : super(key: key);

  @override
  _EnglishState createState() => _EnglishState();
}

class _EnglishState extends State<English> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent[100],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          title: Text("English",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,fontFamily: 'Acme')),
          backgroundColor: Colors.transparent,
        ),
      ),
      body: DefaultTabController(
        length: 3,
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: NestedScrollView(
            physics: NeverScrollableScrollPhysics(),
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
              return <Widget>[
                SliverPersistentHeader(
                  delegate: _SliverAppBarDelegate(
                    TabBar(
                      indicatorColor: Colors.white,
                      indicatorPadding: EdgeInsets.only(top: 40.0,left: 10.0,bottom: 0.0),
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.black,
                      tabs: [
                        Text('Term 1',style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold)),
                        Text('Term 2',style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold)),
                        Text('Term 3',style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                  pinned: true,
                  floating: true,
                ),
              ];
            },
            body: Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: TabBarView(
                children: [
                  Term1(),
                  Term2(),
                  Term3(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Term1 extends StatelessWidget {

  final List<Map<String, dynamic>> Term_1 = [
    {
      "title": "Earth, The Desolated Home",
      "subtitle": "Prose",
      "Leading": "1",
      "val": 1,
    },
    {
      "title": "Beyond the Universe",
      "subtitle": "Poem",
      "Leading": "1",
      "val" : 2,
    },
    {
      "title": "Lost in Space",
      "subtitle": "Supplementary",
      "Leading": "1",
      "val" : 3,
    },
    {
      "title": "Trip to My Grandparents Village",
      "subtitle": "Prose",
      "Leading": "2",
      "val" : 4,
    },
    {
      "title": "Farmer’s Friend",
      "subtitle": "Poem",
      "Leading": "2",
      "val" : 5,
    },
    {
      "title": "The Farmer and his Daughters",
      "subtitle": "Supplementary",
      "Leading": "2",
      "val" : 6,
    },
    {
      "title": "The Guardians of the Nation",
      "subtitle": "Prose",
      "Leading": "3",
      "val" : 7,
    },
    {
      "title": "Patriotism",
      "subtitle": "Poem",
      "Leading": "3",
      "val" : 8,
    },
    {
      "title": "The Legend of Jaswantgarh",
      "subtitle": "Supplementary",
      "Leading": "3",
      "val" : 9,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent[100],
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 0.0,bottom: 30.0),
            child: ListView.builder(
                itemCount: Term_1.length,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return ClipRRect(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 20.0, bottom: 0.0, left: 20.0, right: 20.0),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border(
                                right: BorderSide(width: 5.0,color: Colors.white)
                            )
                        ),
                        child: ListTile(
                          tileColor: Colors.black,
                          leading: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text(Term_1[index]['Leading'], style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                          ),
                          title: Padding(
                            padding: const EdgeInsets.only(left: 10.0,top: 8.0),
                            child: Text(Term_1[index]['title'], style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,)),
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(Term_1[index]['subtitle'], style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,)),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                alignment: Alignment.bottomCenter,
                                curve: Curves.decelerate,
                                type: PageTransitionType.size,
                                child: QuestionPage(Term_1[index]['val']),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  );
                }
            ),
          ),
        ],
      ),
    );
  }
}

class Term2 extends StatelessWidget {

  final List<Map<String, dynamic>> Term_2 = [
    {
      "title": "The Gift",
      "subtitle": "Prose",
      "Leading": "1",
      "val": 10,
    },
    {
      "title": "Mother Nature",
      "subtitle": "Poem",
      "Leading": "1",
      "val" : 11,
    },
    {
      "title": "The Two Pigeons",
      "subtitle": "Supplementary",
      "Leading": "1",
      "val" : 12,
    },
    {
      "title": "The Strength in his Weakness",
      "subtitle": "Prose",
      "Leading": "2",
      "val" : 13,
    },
    {
      "title": "The Swimmer",
      "subtitle": "Poem",
      "Leading": "2",
      "val" : 14,
    },
    {
      "title": "Practice Makes a Man Perfect",
      "subtitle": "Supplementary",
      "Leading": "2",
      "val" : 15,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent[100],
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 0.0,bottom: 30.0),
            child: ListView.builder(
                itemCount: Term_2.length,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return ClipRRect(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 20.0, bottom: 10.0, left: 20.0, right: 20.0),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border(
                                right: BorderSide(width: 5.0,color: Colors.white)
                            )
                        ),
                        child: ListTile(
                          tileColor: Colors.black,
                          leading: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text(Term_2[index]['Leading'], style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                          ),
                          title: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text(Term_2[index]['title'], style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,)),
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text(Term_2[index]['subtitle'], style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,)),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                alignment: Alignment.bottomCenter,
                                curve: Curves.decelerate,
                                type: PageTransitionType.size,
                                child: QuestionPage(Term_2[index]['val']),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  );
                }
            ),
          ),
        ],
      ),
    );
  }
}


class Term3 extends StatelessWidget {

  final List<Map<String, dynamic>> Term_3 = [
    {
      "title": "Five Detectives",
      "subtitle": "Prose",
      "Leading": "1",
      "val": 16,
    },
    {
      "title": "Why Questions",
      "subtitle": "Poem",
      "Leading": "1",
      "val" : 17,
    },
    {
      "title": "The Witty Sparrow",
      "subtitle": "Supplementary",
      "Leading": "1",
      "val" : 18,
    },
    {
      "title": "The Cracked Coffee Cup",
      "subtitle": "Prose",
      "Leading": "2",
      "val" : 19,
    },
    {
      "title": "The Dreamer",
      "subtitle": "Poem",
      "Leading": "2",
      "val" : 20,
    },
    {
      "title": "The New Start",
      "subtitle": "Supplementary",
      "Leading": "2",
      "val" : 21,
    },
    {
      "title": "The Monster Tree",
      "subtitle": "Prose",
      "Leading": "3",
      "val" : 22,
    },
    {
      "title": "Social Responsibility",
      "subtitle": "Poem",
      "Leading": "3",
      "val" : 23,
    },
    {
      "title": "The Case of the Missing Water",
      "subtitle": "Supplementary",
      "Leading": "3",
      "val" : 24,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent[100],
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 0.0,bottom: 30.0),
            child: ListView.builder(
                itemCount: Term_3.length,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return ClipRRect(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 20.0, bottom: 10.0, left: 20.0, right: 20.0),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border(
                                right: BorderSide(width: 5.0,color: Colors.white)
                            )
                        ),
                        child: ListTile(
                          tileColor: Colors.black,
                          leading: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text(Term_3[index]['Leading'], style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                          ),
                          title: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text(Term_3[index]['title'], style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,)),
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text(Term_3[index]['subtitle'], style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,)),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                alignment: Alignment.bottomCenter,
                                curve: Curves.decelerate,
                                type: PageTransitionType.size,
                                child: QuestionPage(Term_3[index]['val']),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  );
                }
            ),
          ),
        ],
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
