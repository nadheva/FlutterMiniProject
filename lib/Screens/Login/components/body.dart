import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/background.dart';
import 'package:flutter_application_1/components/header_login.dart';
import 'package:flutter_application_1/components/icon_btn.dart';
import 'package:flutter_application_1/components/primary_button.dart';
import 'package:flutter_application_1/components/text_field.dart';
import 'package:flutter_application_1/constants.dart';

class Body extends StatelessWidget {
  Body({
    Key? key,
  }) : super(key: key);

  //add controller
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Background(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: HeaderLogin(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    'Masuk Akun',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: kBlue,
                    ),
                  ),
                ),
              ],
            ),
            Form(
              key: _formKey,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: LoginTextField(
                        focus: false,
                        correct: true,
                        obscure: false,
                        text: 'Nama Pengguna',
                        icon: Icons.person,
                        controller: _userController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Nama Pengguna tidak boleh kosong';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.text,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      // ignore: prefer_const_constructors
                      child: LoginTextField(
                        focus: false,
                        correct: false,
                        obscure: true,
                        text: 'Kata Sandi',
                        icon: Icons.lock,
                        controller: _passwordController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Kata Sandi tidak boleh kosong';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.visiblePassword,
                      ),
                    ),
                    PrimaryButton(
                      text: 'Masuk',
                      press: () {
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Data')),
                          );
                        }
                      },
                      color: kOrange,
                      textColor: Colors.black,
                      width: size.width,
                      shadowColor: Colors.black,
                      borderColor: kOrange,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: RichText(
                          text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Lupa kata sandi, ',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                              text: 'klik disini',
                              style: TextStyle(
                                color: kOrange,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pushNamed(context, '/');
                                })
                        ],
                      )),
                    ),
                    // TextButton(
                    //   onPressed: () {},
                    //   child: Text(
                    //     'Lupa kata sandi?',
                    //     style: TextStyle(color: Colors.black),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  width: 150,
                  image: AssetImage('assets/images/thick-line.png'),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Atau',
                  style: TextStyle(
                      fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 20,
                ),
                Image(
                  width: 150,
                  image: AssetImage('assets/images/thick-line.png'),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                children: [
                  Expanded(
                    child: IconBtn(
                        text: 'Lanjutkan dengan Google',
                        press: () {},
                        icon: Image.asset('assets/images/google.png'),
                        color: Colors.white,
                        textColor: Colors.black,
                        borderColor: kBlue,
                        shadowColor: Colors.black),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: IconBtn(
                        text: 'Lanjutkan dengan Facebook',
                        press: () {},
                        icon: Image.asset('assets/images/facebook.png'),
                        color: Colors.white,
                        textColor: Colors.black,
                        borderColor: kBlue,
                        shadowColor: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
