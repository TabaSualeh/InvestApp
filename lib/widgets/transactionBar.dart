import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:investapp/model/transactionHistory.dart';

class TransactionBar extends StatefulWidget {
  final TransactionHistory listofTransactionHistory;

  TransactionBar({required this.listofTransactionHistory});

  @override
  State<TransactionBar> createState() => _TransactionBarState();
}

class _TransactionBarState extends State<TransactionBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Rp ${widget.listofTransactionHistory.amount}",
              style: widget.listofTransactionHistory.description
                      .toLowerCase()
                      .contains("sell")
                  ? Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Color(0xff00B907))
                  : Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(
              height: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.listofTransactionHistory.description,
                  style: GoogleFonts.roboto(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
                Text(widget.listofTransactionHistory.date,
                    style: GoogleFonts.roboto(
                        fontSize: 14, fontWeight: FontWeight.w400))
              ],
            ),
          ],
        ));
  }
}
