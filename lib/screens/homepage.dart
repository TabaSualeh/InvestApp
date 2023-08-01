import 'package:flutter/material.dart';
import 'package:investapp/constants/colors.dart';
import 'package:investapp/model/investmentGuide.dart';
import 'package:investapp/model/transactionHistory.dart';
import 'package:investapp/widgets/Appbar.dart';
import 'package:investapp/widgets/investmentbar.dart';
import 'package:investapp/widgets/planCard.dart';
import 'package:investapp/widgets/portfolio.dart';
import 'package:investapp/widgets/transactionBar.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> plancardslist = ["gold", "silver", "platinum"];
  List<InvestmentGuide> investguidelist = [];
  List<TransactionHistory> listofTransactionHistory = [];
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
      appBar: MyAppbar().appbarwithback(context, "", true, false),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome, Jessie.",
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 10),
                  child: PortfolioCard(callback: showMyAsset),
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
          SizedBox(
            height: 180,
            child: ListView.builder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) {
                String item = plancardslist[index];
                return Padding(
                  padding: const EdgeInsets.only(
                    right: 20.0,
                  ),
                  child: PlanCard(
                    plans: item,
                    width: 134,
                    height: 170,
                  ),
                );
              }),
              itemCount: plancardslist.length,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
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
                  InvestmentGuide item = investguidelist[index];
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
                itemCount: investguidelist.length,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showMyAsset() {
    createtransactionList();
    showModalBottomSheet(
        elevation: 1,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
        context: context,
        builder: (context) {
          return showBottomSheet();
        });
  }

  Container showBottomSheet() {
    return Container(
      padding: EdgeInsets.fromLTRB(
          25, 25, 25, MediaQuery.of(context).viewInsets.bottom),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Center(child: Text("My Asset")),
            trailing: IconButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.cancel_sharp)),
          ),
          Text(
            "Your total asset portfolio",
            style:
                Theme.of(context).textTheme.bodyLarge!.copyWith(color: TMLgrey),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0, right: 15, bottom: 25),
                child: Text(
                  "N203,935",
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .copyWith(fontSize: 32, color: HTxtblack),
                ),
              ),
              Image.asset(
                "assets/valueIncrease.png",
                width: 40,
                height: 16,
              )
            ],
          ),
          Text("Current Plans"),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 20),
            child: PlanCard(plans: "bgGold", height: 207, width: 354),
          ),
          Center(
            child: Text("See All Plans →",
                style: Theme.of(context).textTheme.displaySmall),
          ),
          Text("History"),
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: ListView.separated(
                padding: EdgeInsets.only(top: 10),
                physics: const BouncingScrollPhysics(),
                itemBuilder: ((context, index) {
                  TransactionHistory item = listofTransactionHistory[index];
                  return TransactionBar(
                    listofTransactionHistory: item,
                  );
                }),
                separatorBuilder: (context, index) {
                  return Divider(
                    thickness: 1,
                    endIndent: 34,
                    indent: 34,
                    color: Color(0xffE7E7E7).withOpacity(0.8),
                  );
                },
                itemCount: listofTransactionHistory.length,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void createtransactionList() {
    listofTransactionHistory = [
      TransactionHistory(
          amount: "200.000",
          description: "Buy \"APPL\" Stock",
          date: "TUE 22 Jun 2020"),
      TransactionHistory(
          amount: "150.000",
          description: "Sell \"TLKM\" Stock",
          date: "TUE 22 Jun 2020"),
      TransactionHistory(
          amount: "1,000.240",
          description: "Buy \"FB\" Stock",
          date: "TUE 22 Jun 2020"),
      TransactionHistory(
          amount: "1,000.240",
          description: "Sell \"APPL\" Stock",
          date: "TUE 22 Jun 2020")
    ];
  }

  void createinvestmentList() {
    investguidelist = [
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
