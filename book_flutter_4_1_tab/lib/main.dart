import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // DefaultTabControllerウィジェットだとTabControllerを管理しなくて済む
      home: DefaultTabController(
        // 表示する数を指定
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            // タブバーに表示させるタイトルを指定
            title: const Text('Tabs Demo'),
            // タブバーに表示させる
            bottom: const TabBar(
              // lengthの数分の指定が必要
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
                Tab(icon: Icon(Icons.directions_boat)),
                Tab(icon: Icon(Icons.directions_walk_outlined)),
              ],
            ),
          ),
          // タブバーを押した時にボディに表示させる
          body: const TabBarView(
            // lengthの数分の指定が必要
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_boat),
              Icon(Icons.directions_walk_outlined),
            ],
          ),
        ),
      ),
    );
  }
}
