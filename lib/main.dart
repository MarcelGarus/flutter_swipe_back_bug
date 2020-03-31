import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter swipe back bug',
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First screen')),
      body: Align(
        alignment: Alignment(-0.9, -0.9),
        child: Square(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.beach_access),
        onPressed: () {
          Navigator.of(context).push(CupertinoPageRoute(
            builder: (_) => SecondScreen(),
          ));
        },
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second screen')),
      body: Center(child: Square()),
    );
  }
}

class Square extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'square',
      transitionOnUserGestures: true,
      child: Container(width: 50, height: 50, color: Colors.pink),
    );
  }
}
