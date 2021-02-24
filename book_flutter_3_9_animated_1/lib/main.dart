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
      home: MyHomePage(title: 'AnimatedContainer'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // AnimatedContainerを使用するパターン
      body: AnimatedContainer(
        // 10秒かけて変化する
        duration: const Duration(seconds: 10),
        color: _color,
        child: const SizedBox(
          width: 300,
          height: 300,
        ),
      ),
      // ボタンを押すとSizedBoxの色が緑に変化する
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _color = Colors.green;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
