import 'package:flutter/material.dart';

class CardLearnView extends StatelessWidget {
  const CardLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            margin: ProjectMargins.projectMargins,
            child: SizedBox(
              height: 100,
              width: 300,
              child: Center(child: Text('Enver')),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          Card(
            margin: ProjectMargins.projectMargins,
            child: SizedBox(
              height: 100,
              width: 300,
              child: Center(child: Text('Enver')),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ],
      ),
    );
  }
}

class ProjectMargins {
  static const projectMargins = EdgeInsets.all(10);
}

// Border
// StadiumBorder()
// CircleBorder()
// RoundedREctangleBorder()

class _CustomCard extends StatelessWidget {
  final Widget child;

  const _CustomCard({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: ProjectMargins.projectMargins,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: child,
    );
  }
}
