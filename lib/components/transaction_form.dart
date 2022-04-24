import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class TransactionForm extends StatelessWidget {
  // const TransactionForm({Key? key}) : super(key: key);

  final titleController = TextEditingController();
  final valueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              controller: titleController,
              // ignore: prefer_const_constructors
              decoration: InputDecoration(labelText: 'Titul'),
            ),
            TextField(
              controller: valueController,
              // ignore: prefer_const_constructors
              decoration: InputDecoration(labelText: 'Valor (R\$)'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  style: TextButton.styleFrom(primary: Colors.purple),
                  // ignore: prefer_const_constructors
                  child: Text('Nova Transação'),
                  onPressed: () {
                    // ignore: avoid_print
                    print(titleController.text);
                    // ignore: avoid_print
                    print(valueController.text);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
