import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({Key? key, this.userName}) : super(key: key);
  final String name = "Enver Reis Zeynep Betül Yılmaz";

  final String? userName;

  final ProjectKeys keys = ProjectKeys();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello World"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CupertinoButton(child: const Icon(Icons.add), onPressed: () {}),
          MaterialButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          Text("Welcome $name ${name.length}",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headline3
                  ?.copyWith(color: Colors.red)),
          const SizedBox(
            height: 25.0,
          ),
          Text("Hello $name ${name.length}",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  ?.copyWith(color: Colors.red)),
          Text(userName ?? ''),
          Text(keys.welcomekeys)
        ],
      )),
    );
  }
}

// TextStyle ortak özellik olduğu için bir class içerisinde tanımlandı.

class ProjectStyles {
  static TextStyle welcomeStyle = const TextStyle(
      color: Colors.red,
      fontSize: 24.0,
      wordSpacing: 2,
      letterSpacing: 5,
      height: 2,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic);
}

class ProjectKeys {
  final String welcomekeys = "Enver";
}
