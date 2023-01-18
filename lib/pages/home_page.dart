import 'package:flutter/material.dart';
import 'package:kids/pages/quiz_page.dart';
import 'package:kids/pages/quizz_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color red = Colors.red;
  Color yellow =Colors.yellow;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.pink,
      title: const Text('Hello kids'),
    ),
    body: Padding(
      padding: const EdgeInsets.only(top: 30, left: 24, right: 24),
      child: ListView(
        children: [

          const Text("Let's learn some colors",
          style: TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(100)
                    ),
                  ),
                  const SizedBox(height: 5,),
                  const Text('This is color red',
                   style: TextStyle(fontSize: 15),),
                   SizedBox(
          width: MediaQuery.of(context).size.width * 0.35,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              foregroundColor: Colors.black,
              backgroundColor:red, // foreground
            ),
            onPressed: () {
               Navigator.of(context).push(MaterialPageRoute(builder: (_) =>  QuizPage(color: red,)));
            },
            child: const Text('Click me'),
          ),
        ),
                ],
              ),
               Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(100)
                    ),
                  ),
                  const SizedBox(height: 5,),
                  const Text('This is color yellow',
                   style: TextStyle(fontSize: 15),),
                   SizedBox(
          width: MediaQuery.of(context).size.width * 0.35,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              foregroundColor: Colors.black,
              backgroundColor: yellow, // foreground
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_) =>  QuizzPage(color: yellow,)));
            },
            child: const Text('Click me'),
          ),
        ),
                ],
              )
            ],
          )
        ],
      ),
    ),
    );
  }
}