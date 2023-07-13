import 'package:flutter/material.dart';
import 'package:investapp/model/investmentGuide.dart';

class ListBar extends StatefulWidget {
  final InvestmentGuide listInvestment;

  ListBar({
    required this.listInvestment,
  });

  @override
  State<ListBar> createState() => _ListBarState();
}

class _ListBarState extends State<ListBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    widget.listInvestment.title,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    widget.listInvestment.description,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Image(
                width: 61,
                height: 61,
                image: AssetImage(
                  widget.listInvestment.imagePath,
                )),
          ],
        ));
  }
}
