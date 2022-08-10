import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/container_sized_box_learn.dart';

class ScaffoldLearn extends StatelessWidget {
  const ScaffoldLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(child: Text("Scaffold, Text, SizedBox, Drawer")),
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                    height: 200,
                  ));
        },
        backgroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: const Drawer(),
      bottomNavigationBar: Container(
        height: 100,
        decoration: BoxDecoration(
            color: Colors.red,
            border: Border.all(color: Colors.red, width: 5),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: BottomNavigationBar(items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.abc_outlined,
              color: Colors.white,
              size: 50,
            ),
            label: "home",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.abc_outlined,
                color: Colors.white,
                size: 50,
              ),
              label: "settings"),
        ]),
      ),
    );
  }
}
