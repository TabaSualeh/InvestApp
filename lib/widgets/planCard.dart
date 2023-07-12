import 'package:flutter/material.dart';

class PlanCard extends StatelessWidget {
  final String plans;
  PlanCard({required this.plans});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 134,
      height: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        gradient: LinearGradient(
            colors: plans == "gold"
                ? [
                    Color(0xffD98F39),
                    Color(0xffF0C735),
                  ]
                : plans == "silver"
                    ? [
                        Color(0xff979797),
                        Color(0xffCAC9C9),
                      ]
                    : [
                        Color(0xff615EE2),
                        Color(0xffBA8DF3),
                      ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight),
      ),
      child: plans == "gold"
          ? Image(
              image: AssetImage("assets/goldplan.png"),
            )
          : plans == "silver"
              ? Image.asset("assets/silverplan.png")
              : Image.asset("assets/platinumplan.png"),
    );
  }
}
