import 'package:budget_tracker/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deleteTx;

  TransactionList(this.transactions, this.deleteTx);
  @override
  Widget build(BuildContext context) {
    return transactions.isEmpty
        ? Column(
            children: [
              const Text(
                'No transactions added yet',
                style: TextStyle(
                  fontFamily: 'Quicksand',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                  height: 200,
                  child: Image.asset(
                    'assets/images/waiting.png',
                    fit: BoxFit.cover,
                  )),
            ],
          )
        : ListView.builder(
            itemBuilder: (ctx, index) {
              return Card(
                elevation: 5,
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    child: Padding(
                        padding:const EdgeInsets.all(6),
                        child: FittedBox(
                            child: Text('Rs ${transactions[index].amount}'))),
                  ),
                  title: Text(
                    transactions[index].title,
                    style:const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    DateFormat.yMMMd().format(transactions[index].date),
                  ),
                  trailing: IconButton(
                    onPressed: () => deleteTx(transactions[index].id),
                    icon:const Icon(
                      Icons.delete,
                    ),
                  ),
                ),
              );
            },
            itemCount: transactions.length,
            // children: transactions.map((tx) {

            // }).toList(),
          );
  }
}
