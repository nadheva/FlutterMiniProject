import 'package:flutter/material.dart';
import 'package:flutter_application_1/google_icons.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //add controller
  TextEditingController _userController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 30),
                    child: Text(
                      'Masuk Akun',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1D7599),
                      ),
                    ),
                  ),
                ],
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 16),
                      child: TextFormField(
                        controller: _userController,
                        autofocus: true,
                        autocorrect: true,
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Nama Pengguna tidak boleh kosong';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          // icon: Icon(Icons.add_a_photo),
                          prefixIcon: Icon(Icons.person),
                          // prefixText: 'Email',
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Nama Pengguna',
                          hintStyle: TextStyle(fontFamily: 'Montserrat'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 16),
                      child: TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Password tidak boleh kosong';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          // icon: Icon(Icons.add_a_photo),
                          prefixIcon: Icon(Icons.lock),
                          // prefixText: 'Email',
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Kata Sandi',
                          hintStyle: TextStyle(fontFamily: 'Montserrat'),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  // If the form is valid, display a snackbar. In the real world,
                                  // you'd often call a server or save the information in a database.
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('Processing Data')),
                                  );
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Color(0XFFFDB515),
                                onPrimary: Colors.black,
                                onSurface: Colors.blue,
                                shadowColor: Colors.yellow,
                                minimumSize: Size(0, 50),
                                alignment: Alignment.center,
                                animationDuration: Duration(
                                    milliseconds:
                                        200), //Durasi tombolnya ke angkat pas di klik
                                elevation: 2, //Kadar ketinggian elevasi nya
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.0))),
                                // side: BorderSide(color: Colors.red.shade900, width: 2),
                                // padding: EdgeInsets.all(10),
                                // visualDensity: VisualDensity.compact, //Kepadatan sisi dengan dalamnya
                              ),
                              child: Text(
                                'Masuk',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 10),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/ForgotPassword');
                  },
                  child: Text(
                    'Lupa kata sandi?',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    width: 120,
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
                    width: 120,
                    image: AssetImage('assets/images/thick-line.png'),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 30),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Google.gplus,
                          color: Colors.green,
                        ),
                        label: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'Lanjutkan dengan Google',
                            style: TextStyle(fontFamily: 'Montserrat'),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.black,
                          onSurface: Colors.blue,
                          shadowColor: Colors.black,
                          minimumSize: Size(0, 50),
                          alignment: Alignment.centerLeft,
                          animationDuration: Duration(
                              milliseconds:
                                  200), //Durasi tombolnya ke angkat pas di klik
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Color(0xFF7583CA),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                        ),
                        // style: ButtonStyle(
                        //   padding: MaterialStateProperty. EdgeInsets.all(8),
                        //   foregroundColor: MaterialStateProperty.all(Colors.white),
                        //   backgroundColor: MaterialStateProperty.resolveWith(
                        //       (states) => states.any(
                        //               (element) => element == MaterialState.pressed)
                        //           ? Colors.purple
                        //           : Colors.red),
                        //   overlayColor: MaterialStateProperty.all(
                        //     Colors.green.withOpacity(0.5),
                        //   ),
                        //   alignment: Alignment.centerLeft,
                        // ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Google.facebook_squared,
                          color: Colors.blue,
                        ),
                        label: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'Lanjutkan dengan Facebook',
                            style: TextStyle(fontFamily: 'Montserrat'),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.black,
                          onSurface: Colors.blue,
                          shadowColor: Colors.yellow,
                          minimumSize: Size(0, 50),
                          alignment: Alignment.centerLeft,
                          animationDuration: Duration(
                              milliseconds:
                                  200), //Durasi tombolnya ke angkat pas di klik
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Color(0xFF7583CA),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Image(
                  image: AssetImage('assets/images/bottom.png'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
