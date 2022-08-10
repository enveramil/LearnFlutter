import 'package:flutter/material.dart';

// ignore: must_be_immutable
class IconLearn extends StatelessWidget {
  IconLearn({Key? key}) : super(key: key);
  IconColors iconColors = IconColors();

  IconSizes iconSizes = IconSizes();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icon Learn App Bar'),
      ),
      body: Column(
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message_outlined,
                size: iconSizes.iconSizes,
                color: Theme.of(context).backgroundColor,
              )),
          const SizedBox(
            height: 50,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message_outlined,
                size: iconSizes.iconSizes,
                color: iconColors.froly,
              )),
          const SizedBox(
            height: 50,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message_outlined,
                size: iconSizes.iconSizes,
                color: iconColors.froly,
              ))
        ],
      ),
    );
  }
}

class IconSizes {
  final double iconSizes = 40;
}

class IconColors {
  Color froly = const Color(0xffED617A);
}
