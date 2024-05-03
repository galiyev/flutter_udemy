import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
     return Center(
         child: Column(
           mainAxisSize: MainAxisSize.min,
           children: [
              Image.asset( 
                'assets/images/quiz-logo.png',
                width: 300,),
              const SizedBox(height: 80,),
              const Text('Learn4 1Flutter the fun way!', style: TextStyle(),)
           ],
         )
     );
  }
}