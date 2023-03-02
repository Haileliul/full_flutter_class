import 'package:flutter/material.dart';

class Answers extends StatefulWidget {
  final my;
  String Ans;
  Answers(this.my, this.Ans);

  @override
  State<Answers> createState() => _AnswersState();
}

class _AnswersState extends State<Answers> {
  int a = 1;
  String Ans2 = '';

  @override
  void initState() {
    super.initState();
    Ans2 = widget.Ans;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onHover: (value) {
            setState(() {
              if (a == 1) {
                a = 0;
              } else if (a != 1) {
                a = 1;
              }
            });
          },
          style: ButtonStyle(
            backgroundColor:
                MaterialStatePropertyAll(a != 1 ? Colors.blue : Colors.amber),
          ),
          onPressed: widget.my,
          child: Text(Ans2),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
