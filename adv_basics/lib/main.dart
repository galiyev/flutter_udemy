import 'package:adv_basics/start_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

void main() {
  runApp(const MaterialApp(home: Scaffold(body: StartScreen())));
}    

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   void startQuiz() {
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return MaterialApp(
//
//       title: 'DDD',
//       theme: ThemeData(useMaterial3: true),
//       home: Scaffold(
//         backgroundColor: Color.fromRGBO(70, 4, 122, 100),
//         appBar: AppBar(
//           backgroundColor: Color.fromRGBO(70, 4, 122, 100),
//           // title: Text('Text', style: TextStyle(fontSize: 22, color:Colors.white), ),
//         ),
//         body: Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               colors: [Color.fromRGBO(70, 4, 122, 100), Color.fromRGBO(70, 4, 122, 90)],
//               begin: startAlignment,
//               end: endAlignment
//             )
//           ),
//           child:Center(
//              child:  Column(
//                mainAxisSize: MainAxisSize.min,
//                children: [
//                  Transform.translate(
//                    offset: Offset(0,-50),
//                    child:  Image.asset(
//                      'assets/images/quiz-logo.png',
//                      width: 200,
//                    ),
//                  ),
//                  const SizedBox(height: 20,),
//                  const Text('Learn Flutter the fun way', style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),),
//                  TextButton(
//                    onPressed: startQuiz,
//                    style: TextButton.styleFrom(
//                      padding: const EdgeInsets.only(
//                        top: 6,
//                        left: 10,
//                        right: 10,
//                        bottom: 6
//                      ),
//                      backgroundColor: Color.fromRGBO(70, 4, 122, 90),
//                      foregroundColor: Colors.white,
//                      textStyle: const TextStyle(
//                        fontSize: 20,
//                      ),
//                    ),
//                    child: const Text('Start Quiz'),
//                  )
//                ],
//              ),
//           )
//         ),
//       ),
//     );
//   }
// }