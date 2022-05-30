// ignore_for_file: use_key_in_widget_constructors, unused_element

import 'dart:math';

import '/models/transaction.dart';
import 'package:flutter/material.dart';
import 'transaction_form.dart';
import 'transaction_list.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({Key? key}) : super(key: key);

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
      id: 't1',
      title: 'Novo Tênis de Corrida',
      value: 310.76,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Conta de Luz',
      value: 211.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't20',
      title: 'Conta #01',
      value: 211.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Conta #02',
      value: 211.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't4',
      title: 'Conta #03',
      value: 211.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't5',
      title: 'Conta #04',
      value: 211.30,
      date: DateTime.now(),
    ),
  ];
//dados para serem exibidos na lista de transacoes

// adicionar uma nova função
  _addTransaction(String newTitle, double value) {
    //função que vai criar uma nova tr ligada ao TransactionForm sempre que chamar sera executada essa funçao
    final newTransaction = Transaction(
        id: Random()
            .nextDouble()
            .toString(), //vai gerar um id unico em valor double
        title: newTitle,
        value: value,
        date: DateTime.now());

    setState(() {
      // e oq que vai alterar a lista de transações para a interface atualiza
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionForm(_addTransaction),
        TransactionList(_transactions),
      ],
    );
  }
}
