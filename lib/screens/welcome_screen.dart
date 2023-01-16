import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social/screens/login_screen.dart';
import 'package:social/utils/typographie.dart';

import '../utils/colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                  child: Column(
                children: [
                  Container(
                    width: 160,
                    height: 160,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.contain,
                            filterQuality: FilterQuality.high,
                            image: AssetImage("assets/images/logo.png"))),
                  ),
                  TypoText(text: "Bienvenue !", color: AppColors.text).large()
                ],
              )),
              Spacer(),
              CupertinoButton(
                  color: Colors.black87,
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child:
                      TypoText(text: "Connexion", color: AppColors.textButton)
                          .h3()),
              SizedBox(height: 7.0),
              CupertinoButton(
                  color: Colors.black87,
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: TypoText(
                          text: "Enregistrement", color: AppColors.textButton)
                      .h3()),
            ],
          ),
        ),
      ),
    );
  }
}
