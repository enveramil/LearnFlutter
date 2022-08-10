import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StateLess Learn"),
      ),
      body: Column(
        children: [
          SpecialContainer(),
          SpecialContainer(),
          SpecialContainer(),
          SpecialContainer(),
          SpecialContainer(),
          SpecialContainer(),
        ],
      ),
    );
  }

  SizedBox EmptyBox() => const SizedBox(
        height: 10,
      );
}

class SpecialContainer extends StatelessWidget {
  const SpecialContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: SpecialPadding.rightPadding,
      height: 100,
      color: Colors.white,
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline4,
    );
  }
}

class SpecialPadding {
  static const allPadding = EdgeInsets.symmetric(vertical: 10);
  static const rightPadding = EdgeInsets.only(right: 10, left: 10, top: 10);
}
