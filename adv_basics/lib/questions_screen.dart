import 'package:adv_basics/answer_button.dart';
import 'package:adv_basics/models/quiz_question.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/data/questions.dart';

class QuestionsScreen extends StatefulWidget{
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen>{
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
                currentQuestion.text,
                style: const TextStyle(
                  color: Colors.white
                ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30,),
            ...currentQuestion.answers.map((answer){
              return AnswerButton(answerText: answer, onTap: (){});
            })
        ],),
      ),
    );
  }
}


