import 'package:flutter/material.dart';
import 'package:transaction/model/transaction.dart';
import 'package:transaction/widgets/new_transaction.dart';
import 'package:transaction/widgets/transaction-list.dart';
import 'package:transaction/widgets/user_trransaction.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
     home: MyHomePage(),
    );
  }
}

class MyHomePage extends  StatelessWidget {
 final List <Transactions> transactions = [
  
 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("transactions"),
      ),
      body:  SingleChildScrollView(
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:[
              Card(
                color: Colors.blue,
               child:Container(width: double.infinity, child: Text("chart transactions"),
                ),
                elevation: 5,
               ),
              
              userTransaction(),
            ],
          ),
      ),
      
    );
  }
} 


 