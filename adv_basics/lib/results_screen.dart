import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/models/questions_summary.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key,
    required this.chosenAnswers,
    required this.onRestartQuiz});

  final List<String> chosenAnswers;
  final void Function() onRestartQuiz;


  List<Map<String,Object>> getSummaryData(){
      final List<Map<String,Object>>  summary = [];

      for (var i = 0; i<chosenAnswers.length; i++){
         summary.add({
           'question_index':i,
           'question': questions[i].text,
           'correct_answer': questions[i].answers[0],
           'user_answer':chosenAnswers[i],
           'is_right':questions[i].answers[0]==chosenAnswers[i]
         });
      }

      return summary;
  }

  @override
  Widget build(BuildContext context) {

    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data){
        return data['user_answer'] == data['correct_answer'];
    }).length;


    // TODO: implement build
    return  SizedBox(
        width: double.infinity,
        child: Container(
        padding: const EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children:  [
                Text(
                    'You answered $numCorrectQuestions '
                        'out of $numTotalQuestions questions correctly!',
                    textAlign: TextAlign.center,
                    style:  const TextStyle(
                        color:  Color.fromARGB(
                            255, 217, 177, 246),
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                ),
                const SizedBox(height: 30,),
                QuestionsSummary(summaryData),
                const SizedBox(height: 30,),
                 OutlinedButton.icon(
                      onPressed: onRestartQuiz,
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.white,
                      ),
                      icon: const Icon(Icons.arrow_right_alt),
                      label: const Text('Restart quiz'),
                )
              ],
            )
      ),
    );
  }
}