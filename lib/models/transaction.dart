import 'package:flutter/material.dart';

class Transaction extends StatelessWidget {
  final String id;
  final String title;
  final double amount;
  final DateTime date;

  const Transaction({Key? key, required this.id, required this.title,required this.amount, required this.date})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
