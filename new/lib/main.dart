import "package:flutter/material.dart";

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text("hi this is my start"),
        ),
      ),
    );
  }
}
