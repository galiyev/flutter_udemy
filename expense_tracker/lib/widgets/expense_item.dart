import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/expense.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});
  
  final Expense expense;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                    expense.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Colors.brown
                    ),
                ),
              ],
            ),
            const SizedBox(height: 4,),
            Row(
              children: [
                Text('\$${expense.amount.toStringAsFixed(2)}', ),
                const Spacer(),
                Row(
                  children: [
                    Icon(categoryIcons[expense.category]),
                    const SizedBox(width: 8,),
                    Text(expense.formattedDate)
                  ],
                )
              ],
            )
          ],
        ),
      ),);
  }
}