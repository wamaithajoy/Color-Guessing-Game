import 'package:flutter/material.dart';
import 'package:kids/pages/home_page.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Image.asset(
          'assets/images/colors.png',
          height: 250,
        )),
        const SizedBox(height: 50,),
        SizedBox(
          height: 50,
          width: MediaQuery.of(context).size.width * 0.5,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)
              ),
              foregroundColor: Colors.white,
              backgroundColor: Colors.orange, // foreground
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_) => const HomePage()));
            },
            child: const Text('Get Started'),
          ),
        ),
      ],
    ));
  }
}
