import 'package:adv_basics/data/questions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget
{
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String,Object>> summaryData;


  @override
  Widget build(BuildContext context) {

      return SizedBox(
        height: 400,
        child: SingleChildScrollView(
          child: Column(
            children: summaryData.map(
                    (data){
                       return Row(children: [
                         Text(
                             ((data['question_index'] as int) +1).toString(),

                         ),
                         Expanded(
                           child: Column(
                             children: [
                                Text(
                                  data['question'] as String,
                                  style:
                                    const TextStyle(
                                      color: Color.fromARGB(255, 188, 176, 216),
                                    ),
                                ),
                                const SizedBox(height: 5,),
                                Text(data['user_answer'] as String),
                                Text(data['correct_answer'] as String),
                             ],
                           ),
                         )
                       ],);
                    }).toList(),
          ),
        ),
      );
  }
}