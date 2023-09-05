import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';
import 'package:mytools/screens/home_screen.dart';
import 'package:mytools/screens/introduction_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});
  final localStorage = new LocalStorage('local_data.json');

  @override
  Widget build(BuildContext context) {
    bool isFirstTime = localStorage.getItem('first') ?? true;
    localStorage.setItem('first', false);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: isFirstTime ? const Introduction() : const Home(),
    );
  }
}
