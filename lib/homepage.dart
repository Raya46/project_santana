import 'package:flutter/material.dart';
import 'package:santana_project/card_home.dart';
import 'package:santana_project/detail_page.dart';
import 'package:santana_project/sidebar_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  List allNotes = [
    'lari pagi',
    'lari sore',
    'lari malam',
    'lari subuh',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        elevation: 0,
        shadowColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => _scaffoldKey.currentState!.openDrawer(),
          icon: Icon(Icons.menu),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 13),
            child: Icon(Icons.search),
          ),
        ],
      ),
      drawer: SidebarHome(),
      body: Container(
        margin: EdgeInsets.fromLTRB(18, 0, 18, 0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'TO DO LIST',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                IconButton(
                    color: Colors.pink,
                    onPressed: () {},
                    icon: Icon(
                      Icons.add_circle_sharp,
                      size: 50,
                    )),
              ],
            ),
            Expanded(
                child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.21,
                            ),
                            Text('25'),
                            Text('March'),
                          ],
                        ),
                      ),
                      Expanded(
                          child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailPage(
                                      allNotes: allNotes,
                                      date: '25 March',
                                    )),
                          );
                        },
                        child: CardHome(
                          notes: '3',
                          allNotes: allNotes,
                        ),
                      ))
                    ],
                  ),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
