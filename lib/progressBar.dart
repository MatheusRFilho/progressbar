import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  ProgressBar({
    Key? key,
    required this.value,
    this.hasLabel = false,
    this.height = 10,
  }) : super(key: key);

  final double value;
  final double? height;
  final bool? hasLabel;

  @override
  Widget build(BuildContext context) {
    double widthVariable = MediaQuery.of(context).size.width * value;
    return Scaffold(
      body: SizedBox(
        height: height,
        child: Stack(
          children: <Widget>[
            SizedBox.expand(
              child: LinearProgressIndicator(
                value: value,
                backgroundColor: Color(0xFFE9ECEF),
                valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
              ),
            ),
            if (hasLabel!)
              SizedBox(
                width: widthVariable,
                child: Center(
                  child: Text((value * 100).round().toString() + "%"),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
