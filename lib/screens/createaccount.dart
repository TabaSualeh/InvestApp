import 'package:flutter/material.dart';
import 'package:investapp/constants/colors.dart';
import 'package:investapp/screens/signup.dart';
import 'package:investapp/widgets/Appbar.dart';
import 'package:investapp/widgets/button.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppbar().appbarwithback(context,"",false,false),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Create an account",
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                Text(
                  "Invest and double your income now",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Container(
                  margin: const EdgeInsets.only(
                      top: 87, left: 24, right: 25, bottom: 38),
                  child: Column(
                    children: [
                      showTextField("Full name", false, TextInputAction.next),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 18),
                        child: showTextField(
                            "Email Address", false, TextInputAction.next),
                      ),
                      showTextField("Password", true, TextInputAction.done),
                      Padding(
                        padding: const EdgeInsets.only(top: 18),
                        child: CustomButton(btnName: "Create Account"),
                      ),
                    ],
                  ),
                ),
                TextButton(
                    onPressed: () {
                      const Signup().toLoginPage(context);
                    },
                    child: Text("Already have an account?",
                        style: Theme.of(context).textTheme.labelMedium))
              ],
            ),
          ),
        ));
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
