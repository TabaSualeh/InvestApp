import 'package:flutter/material.dart';
import 'package:investapp/constants/colors.dart';

class PlanCard extends StatelessWidget {
  final String plans;
  final double width;
  final double height;
  PlanCard({required this.plans, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          gradient: LinearGradient(
              colors: plans == "gold" || plans == "bgGold"
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
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            if (plans == "gold") ...[
              Image.asset("assets/goldplan.png"),
              Positioned(
                  bottom: 99,
                  right: 36,
                  child: Text("Gold\n30% return",
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(fontSize: 17))),
            ] else if (plans == "silver") ...[
              Image.asset("assets/silverplan.png"),
              Positioned(
                  bottom: 99,
                  right: 36,
                  child: Text("Silver\n60% return",
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(fontSize: 17))),
            ] else if (plans == "bgGold") ...[
              Image.asset(
                "assets/bgGold.png",
                opacity: const AlwaysStoppedAnimation(0.8),
              ),
              Positioned(
                  bottom: 140,
                  right: 150,
                  child: Text("Gold\n30% return",
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          fontSize: 18, color: HTxtblack.withOpacity(0.8)))),
            ] else ...[
              Image.asset(
                "assets/platinumplan.png",
                width: 120,
                height: 94,
                opacity: const AlwaysStoppedAnimation(.7),
              ),
              Positioned(
                  bottom: 99,
                  right: 36,
                  child: Text("Platinum\n90% return",
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(fontSize: 17))),
            ]
          ],
        ));
  }
}
