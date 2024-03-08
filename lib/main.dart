import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.yellowAccent,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int num = 5;
  int num2 = 1;
  void func() {
    num2 = Random().nextInt(6) + 1;
    num = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            //for avoiding overflow on screen
            child: TextButton(
              onPressed: () {
                setState(() {
                  func();
                });
              },
              child: Image.asset("images/dice$num.png"),
            ),
          ),
          Expanded(
            //for avoiding overflow on screen
            child: TextButton(
              onPressed: () {
                setState(() {
                  func();
                });
              },
              child: Image.asset("images/dice$num2.png"),
            ),
          ),
        ],
      ),
    );
  }
}
