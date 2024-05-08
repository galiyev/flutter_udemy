import 'package:expense_tracker/widgets/expenses_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ExpensesState();
  }
}


class _ExpensesState extends State<Expenses> {

  final List<Expense> _registeredExpenses = [
    Expense(title: 'Flutter cou112rse', amount: 88, date: DateTime.now(), category: Category.work),
    Expense(title: 'Travel to Turkey', amount: 1288, date: DateTime.now(), category: Category.travel),
    Expense(title: 'Cinema', amount: 128, date: DateTime.now(), category: Category.leisure),
  ];


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
       body: Column(
          children: [
              const Text('The chart'),
              Expanded(
                child: ExpensesList(expenses: _registeredExpenses),
              )
          ],
       ),
    );
  }
}