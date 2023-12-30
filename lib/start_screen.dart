import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.switchScreen, {super.key});
  final void Function() switchScreen;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: switchScreen,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            label: const Text('Start Quiz'),
            icon: const Icon(
              Icons.arrow_right_alt,
            ),
          ),
        ],
      ),
    );
  }
}
