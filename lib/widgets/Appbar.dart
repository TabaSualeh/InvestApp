import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:investapp/widgets/BottomBar.dart';

class MyAppbar {
  final Color? bgColor;
  MyAppbar({this.bgColor});
  appbarwithback(
      BuildContext context, String title, bool isHomepage, bool isExit) {
    return AppBar(
      backgroundColor: bgColor ?? Theme.of(context).appBarTheme.backgroundColor,
      automaticallyImplyLeading: false,
      leading: isHomepage == true
          ? IconButton(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onPressed: () {
                // Drawer open hone ka function lgana ha
              },
              icon: const Icon(
                Icons.menu_rounded,
              ),
            )
          : IconButton(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onPressed: isExit == true
                  ? () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Bottombar()),
                        ModalRoute.withName(' '),
                      );
                    }
                  : () {
                      Navigator.pop(context);
                    },
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
              ),
            ),
      actions: [
        if (isHomepage == true) ...[
          IconButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.notifications_rounded),
          ),
        ]
      ],
      title: Row(
        children: [
          if (title.isNotEmpty) ...[
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(title),
            ),
          ]
        ],
      ),
    );
  }
}
