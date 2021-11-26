import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/screens/question_page.dart';
import 'package:page_transition/page_transition.dart';

class Science extends StatefulWidget {
  const Science({Key? key}) : super(key: key);

  @override
  _ScienceState createState() => _ScienceState();
}

class _ScienceState extends State<Science> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent[100],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          title: Text("Science",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,fontFamily: 'Acme')),
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
      "title": "Organ Systems",
      "Leading": "1",
      "val": 25,
    },
    {
      "title": "Matter and Materials",
      "Leading": "2",
      "val" : 26,
    },
    {
      "title": "Energy",
      "Leading": "3",
      "val" : 27,
    },
    {
      "title": "Science in Everyday Life",
      "Leading": "4",
      "val" : 28,
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
      "title": "Food",
      "Leading": "1",
      "val": 29,
    },
    {
      "title": "Water",
      "Leading": "2",
      "val" : 30,
    },
    {
      "title": "Plants",
      "Leading": "3",
      "val" : 31,
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
      "title": "Our Environment",
      "Leading": "1",
      "val": 32,
    },
    {
      "title": "Animals",
      "Leading": "2",
      "val" : 33,
    },
    {
      "title": "Air",
      "Leading": "3",
      "val" : 34,
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
