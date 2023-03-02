import 'package:flutter/material.dart';
import './Questions.dart';
import './Answer.dart';

void main() => runApp(myapp());

class myapp extends StatefulWidget {
  myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home_page(),
    );
  }
}

class Home_page extends StatefulWidget {
  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  int index = 0;
  late Size size;
  final List Questions = [
    {
      'question': 'what is your name ?',
      'Answer': {"haile", "Baye", "Tamire"}
    },
    {
      'question': "What is your Age ?",
      'Answer': {"12", "32", "23"}
    },
    {
      'question': "What is your favorite pet ?",
      'Answer': {"Dog", "Cat", "Cammel", "animals"}
    },
  ];

  QuesionChange() {
    setState(() {
      if (index < Questions.length - 1) {
        index = index + 1;
        print("it has been clicked ");
      } else {
        () {};
      }
    });
  }

  Widget box() {
    return SizedBox(
      height: 15,
    );
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("My app"),
      ),
      body: Container(
        child: Center(
          child: SizedBox(
            height: size.height * 0.7,
            width: size.width * 0.8,
            child: Card(
              elevation: 10,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    questions(ques: Questions[index]["question"]),
                    box(),
                    box(),
                    ...(Questions[index]['Answer']).map((anss) {
                      return Answers(QuesionChange, anss);
                    }).toList()

                    /*  Answers(QuesionChange),
                    Answers(QuesionChange), */
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
