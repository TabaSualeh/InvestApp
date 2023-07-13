// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:investapp/screens/homepage.dart';
import 'package:investapp/screens/product.dart';
import 'package:investapp/screens/profile.dart';
import 'package:investapp/screens/transaction.dart';
import 'package:investapp/widgets/Appbar.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({Key? key}) : super(key: key);

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int _selectedItem = 0;
  var _pages = [HomePage(), Product(), Transaction(), Profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_rounded), label: "Product"),
            BottomNavigationBarItem(
                icon: Icon(Icons.swap_horizontal_circle_rounded),
                label: "Transaction"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline_rounded,
                ),
                label: "Account"),
          ],
          currentIndex: _selectedItem,
          onTap: (setvalue) {
            setState(() {
              _selectedItem = setvalue;
            });
          }),
      body: _pages[_selectedItem],
    );
  }
}
