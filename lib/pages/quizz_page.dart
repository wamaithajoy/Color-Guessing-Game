import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class QuizzPage extends StatefulWidget {
  final Color color;
  const QuizzPage({super.key, required this.color});

  @override
  State<QuizzPage> createState() => _QuizzPageState();
}

class _QuizzPageState extends State<QuizzPage> {

  AudioPlayer audioPlayer = AudioPlayer();

   @override
  void dispose(){
    super.dispose();
    audioPlayer.dispose();
  }

  @override
  Widget build(BuildContext context) {
       return Scaffold(
       appBar: AppBar(
      backgroundColor: Colors.pink,
      title: const Text("Let's have fun"),
    ),
    body: Padding(
      padding: const EdgeInsets.only(top: 50, left: 24,right: 24),
      child: Center(
        child: Column(
          children: [
            const Text('Which color is this?',
            style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 30,),
             Container(
               height: 150,
               width: 150,
               decoration: BoxDecoration(
                 color: widget.color,
                 borderRadius: BorderRadius.circular(100)
               ),
             ),
             const SizedBox(height: 30,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 SizedBox(
          width: MediaQuery.of(context).size.width * 0.35,
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              foregroundColor: Colors.black,
              backgroundColor: Colors.red, // foreground
            ),
            onPressed: ()  {},
            child: const Text('Red'),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.35,
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              foregroundColor: Colors.black,
              backgroundColor: widget.color, // foreground
            ),
            onPressed: () async {

             await audioPlayer.setReleaseMode(ReleaseMode.loop);
             await audioPlayer.setSourceAsset('audio/claps.mp3');
             await audioPlayer.resume();

             const SnackBar(
  content: Text('Yay! You answered correctly'));

            },
            child: const Text('Yellow'),
          ),
        ),
              ],
             )
          ],
        ),
      ),
    )
    );
  }
}