import 'package:flutter/material.dart';

class Seperator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 0.75,
      endIndent: 10,
      indent: 60,
    );
  }
}