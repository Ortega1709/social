import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social/components/button_component.dart';
import 'package:social/screens/register_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social/utils/validator.dart';

import '../utils/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../utils/typography.dart';

class LoginScreen extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.background_primary),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // header

                SizedBox(height: 20.0),
                TypoText(
                        text: AppLocalizations.of(context)!.authentication,
                        color: AppColors.text_secondary)
                    .Large(),
                SizedBox(height: 10.0),
                TypoText(
                        text: AppLocalizations.of(context)!.pleaseAuth,
                        color: AppColors.text_tertiary)
                    .long(),
                SizedBox(height: 20.0),

                // form

                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      // text form field email

                      TextFormField(
                        controller: emailController,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        style: GoogleFonts.inter(color: AppColors.text_primary),
                        cursorColor: AppColors.text_primary,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.background_secondary,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16.0),
                              borderSide: BorderSide.none),
                          hintText: AppLocalizations.of(context)!.email,
                          hintStyle: GoogleFonts.inter(color: Colors.grey),
                        ),
                        validator: Validator.emailValidator,
                      ),

                      // text form field password

                      SizedBox(height: 15.0),
                      TextFormField(
                        controller: passwordController,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        style: GoogleFonts.inter(color: AppColors.text_primary),
                        cursorColor: AppColors.text_primary,
                        obscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.background_secondary,
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(FontAwesomeIcons.solidEye,
                                  size: 21, color: Colors.grey)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16.0),
                              borderSide: BorderSide.none),
                          hintText: AppLocalizations.of(context)!.password,
                          hintStyle: GoogleFonts.inter(color: Colors.grey),
                        ),
                        validator: Validator.passValidator,
                      ),
                    ],
                  ),
                ),

                // button

                SizedBox(height: 20.0),
                ButtonComponent(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {}
                    },
                    child: TypoText(
                            text: AppLocalizations.of(context)!.signin,
                            color: AppColors.text_secondary)
                        .h2(),
                    color: AppColors.button_primary),

                // footer

                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TypoText(
                            text: AppLocalizations.of(context)!.dontHaveAccount,
                            color: AppColors.text_secondary)
                        .long(),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => RegisterScreen()));
                        },
                        child: TypoText(
                                text:
                                    AppLocalizations.of(context)!.createAccount,
                                color: AppColors.button_primary)
                            .long())
                  ],
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
