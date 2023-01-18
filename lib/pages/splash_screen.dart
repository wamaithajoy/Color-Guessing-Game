import 'package:flutter/material.dart';
import 'package:kids/pages/get_started.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  initState() {
    super.initState();
    _delay();
  }

  _delay() async {
  await Future.delayed(const Duration(seconds: 5));
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => const GetStarted()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Image.asset(
          'assets/images/colors.png',
          height: 150,
        )),
        const CircularProgressIndicator()
      ],
    ));
  }
}
