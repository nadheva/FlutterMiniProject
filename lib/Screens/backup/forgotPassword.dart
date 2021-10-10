import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/auth/validation.dart';

class ForgotPasswordPage extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

String validateEmail(String value) {
  RegExp regex =
      new RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
          r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
          r"{0,253}[a-zA-Z0-9])?)*$");
  if (!regex.hasMatch(value) || value == false)
    return 'Mohon masukkan alamat Email yang valid';
  else
    return value;
}

class _ForgotPasswordState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Container(
          margin: EdgeInsets.fromLTRB(16.0, 40.0, 16.0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back_ios),
                    ),
                    Image(
                      height: 50,
                      image: AssetImage("assets/images/logo.png"),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      width: 300,
                      child: Text(
                        "Masukkan Email",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      width: 320,
                      child: TextFormField(
                        //autovalidateMode: AutovalidateMode.onUserInteraction,
                        //validator: validateEmail,
                        decoration: const InputDecoration(
                          hintText: "Email",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.email),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      child: Text("Kirim"),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(320, 50),
                        primary: Colors.orange[400],
                        onPrimary: Colors.black,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/validation');
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Image(
                      height: 300,
                      image: AssetImage("assets/images/Group12.png"),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
