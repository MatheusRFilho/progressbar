import 'package:flutter/material.dart';

import './progressBar.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  static const String route = '/';
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProgressBar(
        value: 0.1,
        hasLabel: true,
        height: 20,
      ),
    );
  }
}
