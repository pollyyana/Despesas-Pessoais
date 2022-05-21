// ignore_for_file: use_key_in_widget_constructors

import '/models/transaction.dart';
import 'package:flutter/material.dart';
import 'transaction_form.dart';
import 'transaction_list.dart';

class TransactionUser extends StatefulWidget {
  // const TransactionUser({Key? key}) : super(key: key);

  // o usuario meche no formulario, formulario notifica transactionUser e adc uma nova transaçao

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

final _transactions = [
  Transaction(
    id: 't1',
    title: 'Novo tenis de corrida',
    value: 310.76,
    date: DateTime.now(),
  ),
  Transaction(
    id: 't2',
    title: 'conta luz',
    value: 211.30,
    date: DateTime.now(),
  ),
];
//dados para serem exibidos na lista de transacoes

class _TransactionUserState extends State<TransactionUser> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionList(_transactions),
        TransactionForm(),
      ],
    );
  }
}
