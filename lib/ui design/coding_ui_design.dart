import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UiDesignApp extends StatelessWidget {
  const UiDesignApp({Key? key}) : super(key: key);

  final title = "Create Your First Note!";
  final subTitle = "Add a note abcdef";
  final buttonWrite = "Create a new paper";
  final importNote = "import your npte quickly";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(
          children: [
            PngImage(name: ImageItems().appleAndBook),
            _titleWidget(title: title),
            Padding(
              padding: PaddingItems.verticalPadding,
              child: _SubTitleWidget(
                subTitle: subTitle,
                textAlign: TextAlign.left,
              ),
            ),
            const Spacer(),
            _CreateButton(buttonWrite: buttonWrite),
            TextButton(onPressed: () {}, child: Text(importNote)),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}

class _CreateButton extends StatelessWidget {
  const _CreateButton({
    Key? key,
    required this.buttonWrite,
  }) : super(key: key);

  final String buttonWrite;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: BorderSide(color: Colors.green, width: 4)))),
        child: SizedBox(
            height: ButtonHeight.buttonHeight,
            child: Center(
                child: Text(
              buttonWrite,
              style: Theme.of(context).textTheme.headline5,
            ))));
  }
}

class _SubTitleWidget extends StatelessWidget {
  const _SubTitleWidget({
    Key? key,
    this.textAlign = TextAlign.justify,
    required this.subTitle,
  }) : super(key: key);

  final String subTitle;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      subTitle * 35,
      textAlign: textAlign,
      style: Theme.of(context)
          .textTheme
          .subtitle1
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w400),
    );
  }
}

class _titleWidget extends StatelessWidget {
  const _titleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headline5
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w800),
    );
  }
}

class PaddingItems {
  static const EdgeInsets horizontalPadding =
      EdgeInsets.symmetric(horizontal: 20);

  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 10);
}

class ImageItems {
  final String appleAndBook = "apple_and_book";
}

class PngImage extends StatelessWidget {
  const PngImage({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _namewithPath,
      fit: BoxFit.cover,
    );
  }

  String get _namewithPath => 'assets/png/$name.png';
}

class ButtonHeight {
  static const double buttonHeight = 50;
}
