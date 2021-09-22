import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  String text = ' ';
  String ramdom = ' ';

  @override
  void initState() {
    text = 'hello world!!!!!!!!!!!!!!!!!!!!!!!!!!';
    super.initState();
  }

  void licking() {
    setState(() {
      text = 'the lucky number is';
      List<int> numberList = [];
      while (numberList.length < 6) {
        int randomnumber = Random().nextInt(56);
        if (!numberList.contains(randomnumber)) {
          numberList.add(randomnumber);
          ramdom = ramdom + ' ' + randomnumber.toString();
        }
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hello world app',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('hello app'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text),
              Text(ramdom),
              ElevatedButton(onPressed: licking, child: const Text('lick me'))
            ],
          ),
        ),
      ),
    );
  }
}
