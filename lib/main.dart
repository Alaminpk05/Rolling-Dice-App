import 'package:dice_bloc/feature/dice/presentation/pages/dicepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rolling Dice',
      theme: ThemeData.dark(
      ),
      debugShowCheckedModeBanner: false,
      home: DiceGame(),
    );
  }
}

