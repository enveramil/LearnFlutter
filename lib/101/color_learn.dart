import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  const ColorLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Container(
              //margin: EdgeInsets.only(left: 10),
              margin: const EdgeInsets.only(left: 10, top: 10),
              color: Colorsss.zebra,
              child: const Text(
                "Data",
                style: TextStyle(fontSize: 40),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, top: 10),
              color: Colorsss.zebra,
              child: const Text(
                "Data",
                style: TextStyle(fontSize: 40),
              ),
            ),
          ],
        ));
  }
}

class Colorsss {
  static const Color zebra = Color.fromARGB(214, 97, 191, 0);
}
