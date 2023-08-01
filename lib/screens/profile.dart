import 'package:flutter/material.dart';
import 'package:investapp/constants/colors.dart';
import 'package:investapp/screens/bankAccountinfo.dart';
import 'package:investapp/screens/createaccount.dart';
import 'package:investapp/screens/signup.dart';
import 'package:investapp/widgets/Appbar.dart';
import 'package:investapp/widgets/profileTile.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void toBankAccountInfo() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => BankAccountInfo()));
    }

    void logout() {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (BuildContext context) => Signup()),
        ModalRoute.withName(' '),
      );
    }

    return Scaffold(
      // backgroundColor: Color(0xffF6F6F9),
      appBar: MyAppbar().appbarwithback(context, "", false,true),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 190, bottom: 30),
              child: Text(
                "Profile",
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ),
            const CircleAvatar(
              radius: 75,
              backgroundImage: AssetImage("assets/dp.jpg"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 21.0, bottom: 7),
              child: Text(
                "Taba Sualeh",
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(fontWeight: FontWeight.w600),
              ),
            ),
            Text(
              "Flutter Developer",
              style: Theme.of(context)
                  .textTheme
                  .labelSmall!
                  .copyWith(color: HTxtblack),
            ),
            Expanded(
              child: SizedBox(
                width: 354,
                child: ListView(
                  padding: EdgeInsets.only(right: 15, left: 15, top: 30),
                  physics: BouncingScrollPhysics(),
                  children: [
                    ProfileTile(
                        imagepath: "assets/contacticon.png",
                        title: "Contact Info",
                        callback: () {}),
                    ProfileTile(
                        imagepath: "assets/funding.png",
                        title: "Source of Funding info",
                        callback: () {}),
                    ProfileTile(
                        imagepath: "assets/bank.png",
                        title: "Bank Account Info",
                        callback: toBankAccountInfo),
                    ProfileTile(
                        imagepath: "assets/doc.png",
                        title: "Document Info",
                        callback: () {}),
                    ProfileTile(
                        imagepath: "assets/setting.png",
                        title: "Settings",
                        callback: () {}),
                    ProfileTile(
                        leadIcon: const Icon(
                          Icons.logout_rounded,
                          color: Color(0xff333333),
                        ),
                        title: "Log Out",
                        callback: logout)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
