import 'package:feed/page/zhihu/zhihu_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(

          title: Text('Feed'),
          bottom: TabBar(
            tabs: [
              Tab(text: '知乎'),
              Tab(text: '微博'),
              Tab(text: 'GITHUB'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ZhiHuPage(),
            Container(),
            Container(),
          ],
        ),
      ),
    );
  }
}
