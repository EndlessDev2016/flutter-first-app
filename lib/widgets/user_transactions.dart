import 'package:flutter/material.dart';

import './new_transation.dart';
import './transaction_list.dart';
import '../modles/transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransactions = [
    Transaction(
        id: 't1', title: 'New Shose1', amount: 69.99, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'New Shose2', amount: 69.99, date: DateTime.now()),
    Transaction(
        id: 't3', title: 'New Shose3', amount: 69.99, date: DateTime.now())
  ];

  void _addNewtransaction(String title, double txAmount) {
    final newTx = Transaction(
        title: title,
        amount: txAmount,
        date: DateTime.now(),
        id: DateTime.now().toString());

    setState(() {
      this._userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(),
        TransactionList(this._userTransactions)
      ],
    );
  }
}
