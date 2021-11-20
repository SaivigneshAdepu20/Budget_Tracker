import 'package:budget_tracker/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:budget_tracker/widgets/new_transaction.dart';
import 'package:budget_tracker/widgets/transaction_list.dart';

class UserTransaction extends StatefulWidget {
  const UserTransaction({Key? key}) : super(key: key);

  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 'sai',
      title: 'vignesh',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'adepu',
      title: 'Bhumesh',
      amount: 9.99,
      date: DateTime.now(),
    ),
  ];
  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );
    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
