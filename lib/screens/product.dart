import 'package:flutter/material.dart';
import 'package:investapp/widgets/Appbar.dart';

class Product extends StatelessWidget {
  const Product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar().appbarwithback(context, "Product", false,true),
      body: Center(child: Text("Product")),
    );
  }
}
