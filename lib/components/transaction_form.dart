import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class TransactionForm extends StatelessWidget {
  // const TransactionForm({Key? key}) : super(key: key);

  final titleController = TextEditingController();
  final valueController = TextEditingController();

  final void Function(String, double)
      onSubmit; // submeter o formulario passando por title e value

  // ignore: use_key_in_widget_constructors
  TransactionForm(
      this.onSubmit); //construtor transaction Form/ on submit e o parametro

  _submitForm() {
    final stitle = titleController.text;
    // ignore: avoid_print
    final svalue = double.tryParse(valueController.text) ?? 0.0;
    //
    if (stitle.isEmpty || svalue <= 0) {
      return;
    }
    onSubmit(stitle, svalue);
  }

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
              onSubmitted: (_) => _submitForm(),
              // ignore: prefer_const_constructors
              decoration: InputDecoration(labelText: 'Titulo'),
            ),
            TextField(
              controller: valueController,
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              onSubmitted: (_) => _submitForm(),
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
                  onPressed: _submitForm,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
