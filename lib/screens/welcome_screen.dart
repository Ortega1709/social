import 'package:flutter/material.dart';
import 'package:social/components/button_component.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:social/screens/login_screen.dart';
import '../utils/colors.dart';
import '../utils/typography.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TypoText(text: AppLocalizations.of(context)!.first, color: AppColors.text_secondary).Large(),
              TypoText(text: AppLocalizations.of(context)!.second, color: AppColors.text_secondary).Large(),
              SizedBox(height: 20.0),
              TypoText(
                  text: AppLocalizations.of(context)!.presentationApp, color: AppColors.text_tertiary).long(),



              Spacer(),
              ButtonComponent(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => LoginScreen()));
                  },
                  child: TypoText(text: AppLocalizations.of(context)!.getStarted, color: AppColors.text_secondary).h2(),
                  color: AppColors.button_primary)
            ],
          ),
        ),
      ),
    );
  }
}
