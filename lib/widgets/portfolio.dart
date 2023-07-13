import 'package:flutter/material.dart';
import 'package:investapp/constants/colors.dart';
import 'package:investapp/widgets/button.dart';

class PortfolioCard extends StatelessWidget {
  final VoidCallback callback;
  PortfolioCard({required this.callback});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Container(
        width: double.infinity,
        height: 120,
        decoration: BoxDecoration(
            color: const Color(0xff31A078),
            borderRadius: BorderRadius.circular(20)),
        child: Container(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 11.0),
                child: Text(
                  "Your total asset portfolio",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Txtwhite),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "N203,935",
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .copyWith(fontSize: 32),
                  ),
                  CustomButton(
                    btnName: "Invest Now",
                    height: 40,
                    width: 115,
                    buttonBackgroundColor: Txtwhite,
                    fontColor: const Color(0xff31A078),
                    radius: 15,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
