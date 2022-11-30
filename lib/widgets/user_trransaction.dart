import 'package:transaction/widgets/new_transaction.dart';
import 'package:transaction/widgets/transaction-list.dart';
import 'package:flutter/material.dart';
import 'package:transaction/model/transaction.dart';
class userTransaction extends StatefulWidget {
  const userTransaction({super.key});

  @override
  State<userTransaction> createState() => _userTransactionState();
  
}
class _userTransactionState extends State<userTransaction> {
  
   final List <Transactions> _userTransaction=[
    Transactions(id:"t1" 
  ,title:"shoes",amount:30.5,
   date:DateTime.now()),
   Transactions(id:"t2" 
  ,title:"shoes",amount:30.5,
   date:DateTime.now()),
   Transactions(id:"t3" 
  ,title:"shoes",amount:30.5,
   date:DateTime.now()),
  ];
  void _AddnewTransaction( String txtitle,double txtamount){
  final newTx= Transactions(
    title: txtitle,
    amount: txtamount,
    date: DateTime.now(),
    id: DateTime.now().toString()
    
  );
setState(() {
  _userTransaction.add(newTx);
});
}

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         newTransaction(_AddnewTransaction),
         
          transactionList(_userTransaction)
      ],

    );
  }
}