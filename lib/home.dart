import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLove = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Mission 1",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          
          centerTitle: false,
          backgroundColor: Colors.orange[600],
        ),
        body: Stack(
          children: [
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Colors.yellow, Colors.red])),
                child: Column(
                  children: [
                    Flexible(
                      flex: 2,
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Image.asset(
                          'images/mancu.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.all(3),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 8),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: AspectRatio(
                                      aspectRatio: 1,
                                      child: Image.asset(
                                        'images/ronaldo.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 8),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: AspectRatio(
                                      aspectRatio: 1,
                                      child: Image.asset(
                                        'images/rooney.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 8),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: AspectRatio(
                                      aspectRatio: 1,
                                      child: Image.asset(
                                        'images/scholes.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 8),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: AspectRatio(
                                      aspectRatio: 1,
                                      child: Image.asset(
                                        'images/siralex.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 8),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: AspectRatio(
                                      aspectRatio: 1,
                                      child: Image.asset(
                                        'images/ucl.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 4,
                      child: Column(
                        children: [
                          Text(
                            "Manchester United",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              padding: EdgeInsets.all(8),
                              child: Text(
                                '''
Manchester United Football Club, commonly referred to as Man United (often stylised as Man Utd), or simply United, is a professional football club based in Old Trafford, Greater Manchester, England. The club competes in the Premier League, the top division in the English football league system. Nicknamed the Red Devils, they were founded as Newton Heath LYR Football Club in 1878, but changed their name to Manchester United in 1902. After a spell playing in Clayton, Manchester, the club moved to their current stadium, Old Trafford, in 1910.

Domestically, Manchester United have won a record 20 top-flight league titles, 12 FA Cups, six League Cups and a record 21 FA Community Shields. In international football, they have won the European Cup/UEFA Champions League three times, and the UEFA Europa League, the UEFA Cup Winners' Cup, the UEFA Super Cup, the Intercontinental Cup and the FIFA Club World Cup once each. In 1968, under the management of Matt Busby, 10 years after eight of the club's players were killed in the Munich air disaster, they became the first English club to win the European Cup. Sir Alex Ferguson is the club's longest-serving and most successful manager, winning 38 trophies, including 13 league titles, five FA Cups, and two Champions League titles between 1986 and 2013.[7][8] In the 1998–99 season, under Ferguson, the club became the first in the history of English football to achieve the continental treble of the Premier League, FA Cup and UEFA Champions League. In winning the UEFA Europa League under José Mourinho in 2016–17, they became one of five clubs to have won the original three main UEFA club competitions (the Champions League, Europa League and Cup Winners' Cup).

Manchester United is one of the most widely supported football clubs in the world and has rivalries with Liverpool, Manchester City, Arsenal and Leeds United. Manchester United was the highest-earning football club in the world for 2016–17, with an annual revenue of €676.3 million, and the world's third-most-valuable football club in 2019, valued at £3.15 billion (3.81 billion dollard).After being floated on the London Stock Exchange in 1991, the club was taken private in 2005 after a purchase by American businessman Malcolm Glazer valued at almost £800 million, of which over £500 million of borrowed money became the club's debt. From 2012, some shares of the club were listed on the New York Stock Exchange, although the Glazer family retains overall ownership and control of the club.
''',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ]),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 20,
              right: 20,
              child: FloatingActionButton(
                onPressed: () {
                  setState(() {
                    isLove = !isLove;
                  });
                },
                backgroundColor: Colors.white,
                elevation: 20,
                shape: CircleBorder(),
                child: Icon(
                  Icons.favorite,
                  color: isLove ? Colors.red : Colors.grey[400],
                ),
              ),
            )
          ],
        ));
  }
}
