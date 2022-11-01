import 'dart:developer';

import 'package:flutter/material.dart';

import 'question_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // CounterApp counterApp = CounterApp(title: , );
  List<String> suroolor = [
    'Batken ozgongo karaiby?',
    'Кыргызстанда 7 область барбы?',
    'Green Carta bashtaldiby?'
  ];
  List<String> aClass = [
    "Andrei", // 0
    "Maksim", // 1
    "Aleksandir", // 2
    "Kuba", // 3
  ];
  List<int> lottery = [
    1,
    2,
    3,
    4,
    5,
  ];
  List<bool> sattim = [
    true,
    false,
  ];

  // @override
  // void initState() {
  //   log('message');
  //   super.initState();
  // }
  int jash = 50;
  dynamic teksher2() {
    if (jash <= 18) {
      return const Text('Okuuga tashirsa bolot');
    } else {
      return const Text('Jashi otup ketiptir');
    }
  }

  @override
  void initState() {
    teksher2();
    log('${teksher2()}');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Тапшырма 07'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(Questions().suroonuAlipKel().toString(),
              style: const TextStyle(color: Colors.white, fontSize: 40)),
          InkWell(
            onTap: () {
              Questions().jooptuAlipKel();
            },
            child: Container(
              width: 400,
              color: const Color(0xff4CB050),
              child: const Text(
                'Туура',
                style: TextStyle(color: Colors.white, fontSize: 40),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Questions().jooptuAlipKel();
            },
            child: Container(
              width: 400,
              color: Colors.red,
              child: const Text(
                'Ката',
                style: TextStyle(color: Colors.white, fontSize: 40),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
