import 'package:flutter/material.dart';

class ContainerSizedBoxLearnView extends StatelessWidget {
  const ContainerSizedBoxLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 250,
            width: 200,
            child: Text("a" * 700),
          ),
          const SizedBox.shrink(),
          SizedBox.square(
            dimension: 50,
            child: Text("b" * 150),
          ),
          Container(
            height: 250,
            constraints: const BoxConstraints(
                minWidth: 100, maxWidth: 150, maxHeight: 100),
            padding: const EdgeInsets.all(50),
            decoration: ProjectUtility.decoration,
            child: Text("a" * 20),
          )
        ],
      ),
    );
  }
}

class ProjectUtility {
  static BoxDecoration decoration = BoxDecoration(
      //color: Colors.red,
      borderRadius: BorderRadius.circular(5),
      //shape: BoxShape.circle,
      boxShadow: const [BoxShadow(offset: Offset(0.1, 1))],
      border: Border.all(width: 10, color: Colors.white),
      gradient: const LinearGradient(colors: [Colors.red, Colors.black]));
}

class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
      : super(
            borderRadius: BorderRadius.circular(10),
            //shape: BoxShape.circle,
            boxShadow: const [BoxShadow(offset: Offset(0.1, 1))],
            border: Border.all(width: 10, color: Colors.white),
            gradient: const LinearGradient(colors: [Colors.red, Colors.black]));
}
