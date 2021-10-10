import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/ChangePassword/components/background.dart';
import 'package:flutter_application_1/components/text_field.dart';
import 'package:flutter_application_1/components/primary_button.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/components/header_login.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);

  //add controller
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
        child: Background(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: HeaderLogin(),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Text(
          'Ganti Kata Sandi',
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
          'Masukkan kata sandi baru',
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
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: LoginTextField(
                  focus: false,
                  correct: false,
                  obscure: true,
                  text: 'Masukkan Kata Sandi',
                  icon: Icons.password,
                  controller: _passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Kata Sandi tidak boleh kosong!';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.text,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: LoginTextField(
                  focus: false,
                  correct: false,
                  obscure: true,
                  text: 'Ulangi Sandi',
                  icon: Icons.password,
                  controller: _passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Password tidak sama!';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.text,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: PrimaryButton(
                  text: 'Kirim',
                  press: () {
                    Navigator.pushNamed(context, '/validation');
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
