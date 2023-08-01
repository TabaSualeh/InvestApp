import 'package:flutter/material.dart';
import 'package:investapp/widgets/Appbar.dart';

class Transaction extends StatelessWidget {
  const Transaction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar().appbarwithback(context, "Transaction", false,true),
      body: Center(child: Text("Transaction")),
    );
  }
}
