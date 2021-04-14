import 'dart:math';

import 'package:flutter/material.dart';

import 'package:despesas/models/transaction.dart';
import 'transaction_form.dart';
import 'transaction_list.dart';

class TransactionUser extends StatefulWidget {
  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
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
    ),
    Transaction(
      id: 't3',
      title: 'titulo tesouro direto',
      value: 998.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't4',
      title: 'titulo tesouro pós fixado',
      value: 998.00,
      date: DateTime.now(),
    )
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );
    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionForm(_addTransaction),
        TransactionList(_transactions),
      ],
    );
  }
}
