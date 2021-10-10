import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/auth/login.dart';
import 'package:flutter_application_1/screens/auth/register.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
              child: Image(
                width: 250,
                image: AssetImage("assets/images/logo_orens.png"),
              ),
            ),
            SizedBox(height: 80),
            SizedBox(
              width: 300,
              child: Text(
                "Selamat Datang",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF2995B2),
                  fontSize: 28,
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 280,
              child: Text(
                "Para mahasiswa Kampus Gratis yang siap menjadi penerus bangsa Indonesia!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: 80),
            ElevatedButton(
              child: Text("Masuk"),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(220, 50),
                primary: Color(0xFFFFA726),
                onPrimary: Colors.black,
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text("Daftar"),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(220, 50),
                primary: Colors.white,
                onPrimary: Colors.black,
                side: BorderSide(
                  color: Color(0xFFFFB74D),
                  width: 2,
                ),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomRight,
                child: Image(
                  width: 300,
                  image: AssetImage("assets/images/memphis1.png"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
