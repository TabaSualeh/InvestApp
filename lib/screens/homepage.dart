import 'package:flutter/material.dart';
import 'package:investapp/model/investmentGuide.dart';
import 'package:investapp/widgets/Appbar.dart';
import 'package:investapp/widgets/investmentbar.dart';
import 'package:investapp/widgets/planCard.dart';
import 'package:investapp/widgets/portfolio.dart';

class HomePage extends StatefulWidget {
  List<String> plancardslist = ["gold", "silver", "platinum"];
  List<InvestmentGuide> investguidelist = [];
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    setState(() {
      createinvestmentList();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar().appbarwithback(context, "", true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome, Jessie.",
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 34.0, bottom: 19),
                  child: PortfolioCard(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Best Plans",
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    Text("See All →",
                        style: Theme.of(context).textTheme.displaySmall)
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  String item = widget.plancardslist[index];
                  return Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: PlanCard(plans: item),
                  );
                }),
                itemCount: widget.plancardslist.length,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              "Investment Guide",
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ),
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                itemBuilder: ((context, index) {
                  InvestmentGuide item = widget.investguidelist[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: ListBar(listInvestment: item),
                  );
                }),
                separatorBuilder: (context, index) {
                  return Divider(
                    thickness: 0.8,
                    endIndent: 34,
                    indent: 34,
                    color: Color(0xff4a4a4a).withOpacity(0.8),
                  );
                },
                itemCount: widget.investguidelist.length,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void createinvestmentList() {
    widget.investguidelist = [
      InvestmentGuide(
          title: "Basic type of investments",
          description:
              "This is how you set your foot for 2020 Stock market recession. What’s next...",
          imagePath: "assets/bar1.png"),
      InvestmentGuide(
          title: "How much can you start wit..",
          description:
              "What do you like to see? It’s a very different market from 2018. The way... ",
          imagePath: "assets/bar2.png"),
    ];
  }
}
