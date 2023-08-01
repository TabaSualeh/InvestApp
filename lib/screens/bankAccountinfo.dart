import 'package:flutter/material.dart';
import 'package:investapp/widgets/Appbar.dart';
import 'package:investapp/widgets/bankAccountBar.dart';

class BankAccountInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar().appbarwithback(context, "Bank Account info", false,false),
      body: ListView(
        padding: EdgeInsets.only(right: 15, left: 15),
        children: [
          BankAccountBar(
              bankName: "Bank of Amrica - 0182128xxx",
              username: "Taba Sualeh",
              imgpath: "bankofAmerica"),
          BankAccountBar(
              bankName: "Zenith Bank - 0182128xxx",
              username: "Taba Sualeh",
              imgpath: "zenith"),
        ],
      ),
    );
  }
}
