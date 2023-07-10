import 'package:flutter/material.dart';
import 'package:investapp/constants/colors.dart';
import 'package:investapp/screens/createaccount.dart';
import 'package:investapp/screens/login.dart';
import 'package:investapp/widgets/button.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(left: 10, right: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage("assets/signup.png"),
                width: 300,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 17, top: 18),
                child: Text(
                  "Stay on top of your finance with us.",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ),
              Text(
                "We are your new financial Advisors to recommed the best investments for you.",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              CustomButton(
                btnName: "Create Account",
                topMargin: 50,
                bottomMargin: 13,
                callback: () {
                  toCreateAccout(context);
                },
              ),
              TextButton(
                  onPressed: () {
                    toLoginPage(context);
                  },
                  style: TextButton.styleFrom(primary: Txtwhite),
                  child: Text(
                    "Login",
                    style: Theme.of(context).textTheme.labelMedium,
                  ))
            ],
          ),
        ),
      ),
    );
  }

  void toCreateAccout(BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const CreateAccount()));
  }

  void toLoginPage(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const LoginPage()));
  }
}
