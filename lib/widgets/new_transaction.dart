import 'package:flutter/material.dart';

class newTransaction extends StatelessWidget {
  final Function addTex;
  void _submit() {

    final enteredTitle=TitleController.text;
    final enteredAmount=double.parse(AmountController.text);
if(enteredTitle.isEmpty || enteredAmount<=0){
  return;
}
    addTex(
      enteredTitle,
      enteredAmount,
    );
  }

  final TitleController = TextEditingController();
  final AmountController = TextEditingController();
  newTransaction(this.addTex);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
                decoration: InputDecoration(labelText: 'Title'),
                controller: TitleController,
                onSubmitted: (_) => _submit),
            TextField(
                decoration: InputDecoration(
                  labelText: 'amount',
                ),
                controller: AmountController,
                keyboardType: TextInputType.number,
                onSubmitted: (_) => _submit),
            TextButton(
                child: Text(
                  "Add transactions",
                  style: TextStyle(color: Colors.purple),
                ),
                onPressed: _submit)
          ],
        ),
      ),
    );
  }
}
