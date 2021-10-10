import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Validation/components/background.dart';
import 'package:flutter_application_1/Screens/Login/components/text_field.dart';
import 'package:flutter_application_1/components/primary_button.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/Screens/ForgotPassword/components/header.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
        child: Background(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Header(),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Text(
          'Validasi',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: kBlue,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Text(
          'Masukkan kode yang diberikan melalui E-mail anda yang terdaftar',
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              LoginTextField(
                  focus: false,
                  correct: true,
                  obscure: false,
                  text: '6-Digit',
                  icon: Icons.confirmation_number),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: PrimaryButton(
                  text: 'Kirim',
                  press: () {
                    Navigator.pushNamed(context, '/changePassword');
                  },
                  color: kOrange,
                  textColor: Colors.black,
                  width: size.width,
                  shadowColor: Colors.black,
                  borderColor: kOrange,
                ),
              ),
            ],
          ),
        ),
      )
    ])));
  }
}
