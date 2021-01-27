import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: true, // falseにすると画面スクロールが最上部に達してからヘッダが最大の高さで表示される
            pinned: true, // falseにすると下にスクロールした時ヘッダの表示が完全に消える
            expandedHeight: 200.0, // AppBarが広がってる時の高さ
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('FlexibleSpaceBar'), // ヘッダの高さが狭くなった時のタイトル
              centerTitle: true, // trueだと中央寄せ、falseだと左寄せになる
              background: Stack(
                // backgroundにヘッダが拡大した時のウィジェットを記述
                fit: StackFit.expand,
                children: <Widget>[Image.asset('images/flutter_logo.png')],
              ),
            ),
          ),
          SliverList(
            // スクロールする部分を移譲するクラスをSilverListのdelegateで設定する
            delegate: SliverChildBuilderDelegate(
              // SliverChildBuilderDelegateクラスの場合はIndexWidgetBuilder関数でウィジェットを生成
              (BuildContext context, int index) {
                return ListTile(
                  title: Text('Item $index'),
                );
              },
              childCount: 30,
            ),
          )
        ],
      ),
    );
  }
}
