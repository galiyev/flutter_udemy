
import 'package:uuid/uuid.dart';

const uuid = Uuid();


enum Category { foor, travel, leisure, work }

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }):id = uuid.v4();

  final String id; // 1,2,3
  final String title;
  final double amount;
  final DateTime date;
  final Category category;
}


