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
                       return Row(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Container(
                             width: 30,
                             height: 30,
                             decoration: data['is_right'] as bool?
                             const BoxDecoration(
                               color: Color.fromARGB(255, 118, 188, 240),
                               shape: BoxShape.circle,
                             )
                             :const BoxDecoration(
                             color: Color.fromARGB(255, 252, 104, 245),
                             shape: BoxShape.circle,
                             ),
                             alignment: Alignment.center,
                             child: Text(
                                 ((data['question_index'] as int) +1).toString(),
                                 style: const TextStyle(
                                   fontWeight: FontWeight.bold,
                                   color: Colors.white,
                                   fontSize: 16,
                                 ),
                             ),
                           ),
                         ),
                         Expanded(
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                                Text(
                                  data['question'] as String,
                                  style:
                                    const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                    ),
                                ),
                                const SizedBox(height: 5,),
                                Text(
                                    data['user_answer'] as String,
                                    style:
                                    const TextStyle(
                                        color: Color.fromARGB(
                                            255, 180, 109, 239),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold
                                    ),
                                ),
                                Text(
                                    data['correct_answer'] as String,
                                    style:
                                    const TextStyle(
                                        color: Color.fromARGB(255, 23, 149, 227),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold
                                    ),
                                ),
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