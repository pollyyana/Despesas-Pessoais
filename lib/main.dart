// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors
// import 'package:expenses/components/transaction_form.dart';
// import 'package:expenses/components/transaction_list.dart';
import 'package:flutter/material.dart';
import 'components/transaction_user.dart';

// import 'models/transaction.dart';

main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  // const MyHomePage({Key? key}) : super(key: key);
  // ignore: unused_field

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Despesas Pessoais',
        ),
      ),
      body: SingleChildScrollView(
        //componente responsavel por rolar a tela
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              // width: double.infinity,
              child: Card(
                color: Colors.black12,
                child: Text('Grafico'),
                elevation: 9,
              ),
            ),
            // TransactionList(_transactions)
            // TransactionForm(),
            TransactionUser(),
          ],
        ),
      ),
    );
  }
}
