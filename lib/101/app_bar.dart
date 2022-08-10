import 'package:flutter/material.dart';

class AppBarView extends StatelessWidget {
  const AppBarView({Key? key}) : super(key: key);

  final String _title = "Welcome Flutter Learn";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        actionsIconTheme: const IconThemeData(color: Colors.green),
        leading: const Icon(Icons.chevron_left),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          //Center(child: const CircularProgressIndicator())
        ],
      ),
    );
  }
}
