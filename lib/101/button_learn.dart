import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Learn Lecture'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.green;
                } else {
                  return Colors.white;
                }
              })),
              child: Text(
                "Text Button",
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    ?.apply(color: Colors.black),
              ),
            ),
            ElevatedButton(
                onPressed: null,
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red)),
                child: const Text("Elevated Button")),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
              color: Colors.green,
            ),
            FloatingActionButton.extended(
              onPressed: () {},
              backgroundColor: Colors.red,
              label: Row(children: const [
                Icon(Icons.add, color: Colors.white),
                Text("Floating Action Buttton")
              ]),
            ),
            OutlinedButton(
                style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(45)),
                onPressed: () {},
                child: const Text('Outlined Button')),
            InkWell(onTap: () {}, child: const Text("Custom")),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text("Ekle"),
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 200,
              color: Colors.white,
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10, bottom: 10, right: 40, left: 40),
                  child: Text(
                    "Please Bid",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
