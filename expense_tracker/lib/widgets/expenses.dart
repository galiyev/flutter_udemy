import 'package:expense_tracker/widgets/chart/chart.dart';
import 'package:expense_tracker/widgets/chart/chart_bar.dart';
import 'package:expense_tracker/widgets/expense_list/expenses_list.dart';
import 'package:expense_tracker/widgets/new_expense.dart';
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

  void  _openAddExpenseOverlay(){
      // ...
    showModalBottomSheet(
      isScrollControlled: true,
        context: context,
        builder: (ctx) => NewExpense(onAddExpense: _addExpense),);
  }

  void _addExpense(Expense expense){
    setState(() {
      _registeredExpenses.add(expense);
    });
  }
  
  void _removeExpense(Expense expense){
    final int expenseIndex = _registeredExpenses.indexOf(expense);
    setState(() {
      _registeredExpenses.remove(expense);
    });

    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            duration: const Duration(seconds: 3),
            content: const Text('Expense deleted'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: (){
                 setState(() {
                    _registeredExpenses.insert(expenseIndex, expense);
                 });
              },
            ),
        )
    );
  }


  @override
  Widget build(BuildContext context) {
    Widget mainContent = Center(child: Text("No expenses found. Start adding some"),);

    if (_registeredExpenses.isNotEmpty){
        mainContent = ExpensesList(expenses: _registeredExpenses, onRemoveExpense: _removeExpense,);
    }

    // TODO: implement build
    return  Scaffold(
       appBar: AppBar(
         title: const Text('Flutter expense Tracker'),
         actions: [
              IconButton(
                onPressed: _openAddExpenseOverlay,
                icon: const Icon(Icons.add))
         ],
       ),
       body: Column(
          children: [
              //  Toolbar with add button
              Chart(expenses: _registeredExpenses,),
              Expanded(
                child: mainContent,
              )
          ],
       ),
    );
  }
}