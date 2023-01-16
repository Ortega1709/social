import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social/utils/validator.dart';

import '../components/button_component.dart';
import '../utils/colors.dart';
import '../utils/typography.dart';

class RegisterScreen extends StatelessWidget {

  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(FontAwesomeIcons.arrowLeft,
                  size: 21, color: AppColors.text_primary)),
          automaticallyImplyLeading: false,
          backgroundColor: AppColors.background_primary),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // headers

                SizedBox(height: 20.0),
                TypoText(
                        text: AppLocalizations.of(context)!.createAccount,
                        color: AppColors.text_secondary)
                    .Large(),
                SizedBox(height: 10.0),
                TypoText(
                        text: AppLocalizations.of(context)!.pleaseCreate,
                        color: AppColors.text_tertiary)
                    .long(),
                SizedBox(height: 20.0),

                // form
                Form(
                  key: formKey,
                  child: Column(
                    children: [

                      // text form field name

                      TextFormField(
                        controller: nameController,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        style: GoogleFonts.inter(color: AppColors.text_primary),
                        cursorColor: AppColors.text_primary,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.background_secondary,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16.0),
                              borderSide: BorderSide.none),
                          hintText: AppLocalizations.of(context)!.username,
                          hintStyle: GoogleFonts.inter(color: Colors.grey),
                        ),
                        validator: Validator.usernameValidator,
                      ),

                      // text form field email

                      SizedBox(height: 15.0),
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
                          hintText: "Email",
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
                          hintText: "Mot de passe",
                          hintStyle: GoogleFonts.inter(color: Colors.grey),
                        ),
                        validator: Validator.passValidator,
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20.0),
                ButtonComponent(
                    onPressed: () {},
                    child: TypoText(
                            text: AppLocalizations.of(context)!.createAccount,
                            color: AppColors.text_secondary)
                        .h2(),
                    color: AppColors.button_primary),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TypoText(
                            text: AppLocalizations.of(context)!.haveAccount,
                            color: AppColors.text_secondary)
                        .long(),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: TypoText(
                                text: AppLocalizations.of(context)!.signin,
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
