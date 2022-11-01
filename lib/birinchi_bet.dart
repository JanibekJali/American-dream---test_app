import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:test_app/ekinchi_bet.dart';

class BirinchiBet extends StatelessWidget {
  const BirinchiBet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const EkinchiBet()));
            log('Birinchi bet basilip atat');
          },
          child: Container(
            color: Colors.red,
            child: const Text(
              'Birinchi ekran',
              style: TextStyle(fontSize: 50),
            ),
          ),
        ),
      ),
    );
  }
}
