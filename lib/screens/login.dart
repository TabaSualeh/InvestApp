import 'package:flutter/material.dart';
import 'package:investapp/constants/colors.dart';
import 'package:investapp/screens/homepage.dart';
import 'package:investapp/screens/signup.dart';
import 'package:investapp/widgets/Appbar.dart';
import 'package:investapp/widgets/BottomBar.dart';
import 'package:investapp/widgets/button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar().appbarwithback(context, "", false,false),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 32.0),
                child: Text(
                  "Login",
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 110, left: 24, right: 25, bottom: 38),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 18),
                      child: showTextField(
                          "Email Address", false, TextInputAction.next),
                    ),
                    showTextField("Password", true, TextInputAction.done),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 3, left: 115),
                      child: TextButton(
                          onPressed: () {
                            const Signup().toLoginPage(context);
                          },
                          child: Text("Forgot Password?",
                              style: Theme.of(context).textTheme.labelMedium)),
                    ),
                    CustomButton(
                      btnName: "Login",
                      callback: () => toHomePage(context),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void toHomePage(BuildContext context) {
    // Navigator.push(
    //     context, MaterialPageRoute(builder: (context) => const HomePage()));
    // Navigator.pushReplacement(
    //     context, MaterialPageRoute(builder: ((context) => const HomePage())));
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (BuildContext context) => Bottombar()),
      ModalRoute.withName(' '),
    );
  }

  TextField showTextField(
      String textHint, bool hiddenData, TextInputAction moveToNextTextField) {
    return TextField(
      textInputAction: moveToNextTextField,
      obscureText: hiddenData,
      cursorColor: HintTxtgrey,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        hintText: textHint,
      ),
    );
  }
}
