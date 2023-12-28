import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(220, 135, 4, 222),
            Color.fromARGB(220, 169, 76, 231),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Learn Flutter the fun way!',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color.fromARGB(220, 169, 76, 231),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  )),
              onPressed: () {},
              child: const Text('Start Quiz'),
            )
          ],
        ),
      ),
    );
  }
}
