import 'package:flutter/material.dart';
import 'package:whatsapp_clone/calls.dart';
import 'package:whatsapp_clone/chats.dart';
import 'package:whatsapp_clone/status.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    _scrollController = ScrollController();
    super.initState();
  }

  TabController _tabController;

  ScrollController _scrollController;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: NestedScrollView(
            controller: _scrollController,
            headerSliverBuilder:
                (BuildContext context, bool InnerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  actions: <Widget>[
                    Icon(Icons.search),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(Icons.more_vert),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                  pinned: true,
                  centerTitle: false,
                  backgroundColor: Color(0xff075e54),
                  title: Text("Whatsapp"),
                  bottom: TabBar(
                    indicatorWeight: 5.0,
                    indicatorColor: Colors.white,
                    controller: _tabController,
                    tabs: <Widget>[
                      Tab(
                        icon: Icon(Icons.photo_camera),
                      ),
                      Tab(
                        child: Text("CHATS"),
                      ),
                      Tab(
                        child: Text("STATUS"),
                      ),
                      Tab(
                        child: Text("CALLS"),
                      )
                    ],
                  ),
                ),
              ];
            },
            body: TabBarView(
              controller: _tabController,
              children: <Widget>[
                Text('Camera'),
                Chats(),
                Status(),
                Calls(),
              ],
            ),
          ),
        ));
  }
}
