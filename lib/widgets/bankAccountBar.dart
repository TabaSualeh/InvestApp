import 'package:flutter/material.dart';
import 'package:investapp/constants/colors.dart';

class BankAccountBar extends StatelessWidget {
  final String bankName;
  final String username;
  final String imgpath;
  BankAccountBar(
      {required this.bankName, required this.username, required this.imgpath});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(
          "assets/${imgpath}.png",
          width: 47,
          height: 47,
        ),
        title: Text(
          bankName,
          style: Theme.of(context)
              .textTheme
              .displaySmall!
              .copyWith(color: BankDTblack),
        ),
        subtitle: Text(
          username,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        trailing: Column(
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert_rounded,
                  color: ProfTblack,
                )),
          ],
        ),
      ),
    );
  }
}
