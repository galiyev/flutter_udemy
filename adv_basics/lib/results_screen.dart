import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/models/questions_summary.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String,Object>> getSummaryData(){
      final List<Map<String,Object>>  summary = [];

      for (var i = 0; i<chosenAnswers.length; i++){
         summary.add({
           'question_index':i,
           'question': questions[i].text,
           'correct_answer': questions[i].answers[0],
           'user_answer':chosenAnswers[i]
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
                Text('You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!'),
                const SizedBox(height: 30,),
                const Text('List of answers and questions...'),
                QuestionsSummary(summaryData),
                const SizedBox(height: 30,),
                 ElevatedButton(
                    onPressed: (){},
                     style: ElevatedButton.styleFrom(
                         padding: EdgeInsets.symmetric(
                           vertical: 10,
                           horizontal: 40,
                         ),
                         backgroundColor: Color.fromARGB(255, 117, 70, 204),
                         foregroundColor: Colors.white,
                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))
                     ),
                    child: Text("Restart Quiz!"))
              ],
            )
      ),
    );
  }
}