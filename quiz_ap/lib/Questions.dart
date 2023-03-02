import 'package:flutter/material.dart';

class questions extends StatelessWidget {
  final String ques;
  const questions({required this.ques});

  @override
  Widget build(BuildContext context) {
    return Text(
      ques,
      style: TextStyle(
        // fontFamily: 'Dancing_Script',
        fontWeight: FontWeight.bold,
        fontSize: MediaQuery.of(context).size.width * 0.05,
      ),
    );
  }
}
