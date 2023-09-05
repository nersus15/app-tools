import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:mytools/screens/home_screen.dart';

class Introduction extends StatelessWidget {
  const Introduction({super.key});

  @override
  Widget build(BuildContext context) {
    List<PageViewModel> pages = [
      PageViewModel(
        title: "MyTools By Kamscode.dev",
        body:
            "Aplikasi ini berisi kumpulan Tools yang sering anda gunakan sehari hari",
        decoration: const PageDecoration(
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
          bodyTextStyle: TextStyle(color: Colors.white),
        ),
        image: Lottie.asset(
          'assets/images/introductions/welcome.json',
        ),
      )
    ];

    return Scaffold(
      body: IntroductionScreen(
        pages: pages,
        globalBackgroundColor: Colors.blueAccent,
        doneStyle: const ButtonStyle(
          foregroundColor: MaterialStatePropertyAll(
            Colors.white,
          ),
        ),
        showNextButton: false,
        done: const Text("Lanjutkan"),
        onDone: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => Home(),
            ),
          );
        },
      ),
    );
  }
}
