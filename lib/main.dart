import 'package:adv_basics/grad_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(context) {
    return const MaterialApp(
      home: Scaffold(
        body: GradientContainer(),
      ),
    );
  }
}
