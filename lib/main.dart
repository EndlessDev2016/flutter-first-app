import 'package:flutter/material.dart';
import './transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
        id: 't1', title: 'New Shose1', amount: 69.99, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'New Shose2', amount: 69.99, date: DateTime.now()),
    Transaction(
        id: 't3', title: 'New Shose3', amount: 69.99, date: DateTime.now())
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              child: Text('CHART!'),
              elevation: 5,
            ),
          ),
          // Column(children: this.transactions.map((tx) => Card(child: Text(tx.title))).toList())
          Column(
              children: this.transactions.map((tx) {
            return Card(
                child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Text(
                    tx.amount.toString(),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.purple),
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2)),
                  padding: EdgeInsets.all(10),
                ),
                Column(
                  children: <Widget>[Text(tx.title), Text(tx.date.toString())],
                )
              ],
            ));
          }).toList())
        ],
      ),
    );
  }
}
