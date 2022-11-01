import 'package:flutter/material.dart';

class EkinchiBet extends StatelessWidget {
  const EkinchiBet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Container(
          color: Colors.blue,
          child: const Text(
            'Ekinchi ekran',
            style: TextStyle(fontSize: 50),
          ),
        ),
      )),
    );
  }
}
