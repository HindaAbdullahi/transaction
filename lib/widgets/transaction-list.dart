import 'package:flutter/material.dart';
import 'package:transaction/model/transaction.dart';
import 'package:intl/intl.dart';


class transactionList extends StatelessWidget {
 
final List<Transactions>transactions;

transactionList(this.transactions);
 
 
@override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemBuilder: (ctx,index){
           return Card(

                    child :Row(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 15,
                       
                          ),
                               decoration:BoxDecoration(border: Border.all(
                                color: Colors.purple,
                                width: 2,
                               ),),
                               padding: EdgeInsets.all(10),
                          child: Text('\$${transactions[index].amount.toStringAsFixed(2)}',
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20, color: Colors.purple),),
                        ),
                        Column(
                          children: [
                            Text(transactions[index].title,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                            Text (DateFormat.yMMMd().format(transactions[index].date),
                            style: TextStyle(color: Colors.grey),),
                          ],
                        ),
                      ],
                 
                  ),
                  );
                 
        },
        itemCount: transactions.length,
               

                
              ),
    );
    
  }
}