import 'package:despesas/models/transaction.dart';
import 'package:flutter/material.dart';

main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  final _transactions = [
    Transaction(
      id: 't1',
      title: 'hotone ampero',
      value: 2500.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Colchão Ortobom',
      value: 2800.00,
      date: DateTime.now(),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Despesas Pessoais'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.cyan,
              child: Text('Grafico'),
            ),
          ),
          Column(children: [
            ..._transactions
                .map((tr) => Card(
                      child: Text(tr.title),
                    ))
                .toList(),
          ]),
        ],
      ),
    );
  }
}
