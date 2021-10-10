import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);
  // const Register({Key? key, required this.title}) : super(key: key);

  // final String title;

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  //add controller
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _repeatpasswordController =
      TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),

      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      //SIMPLE ROUTING
                      onTap: () {
                        Navigator.pop(context);
                      },

                      child: const Icon(Icons.arrow_back_ios),
                    ),
                    const Image(
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
                    padding: EdgeInsets.only(top: 5, bottom: 30),
                    child: Text(
                      'Daftar Akun',
                      style: TextStyle(
                        fontFamily: 'Monserrat',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff2995B2),
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
                      // padding: const EdgeInsets.only(top: 16),
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
                          prefixIcon: const Icon(Icons.person),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Nama Pengguna',
                          hintStyle: const TextStyle(fontFamily: 'Montserrat'),
                        ),
                      ),
                    ),

                    //Email
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 16),
                      // padding: const EdgeInsets.only(top: 15),
                      child: TextFormField(
                        controller: _emailController,
                        autofocus: true,
                        autocorrect: true,
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Email tidak boleh kosong';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          // icon: Icon(Icons.add_a_photo),
                          prefixIcon: const Icon(Icons.person),
                          // prefixText: 'Email',
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Email',
                          hintStyle: const TextStyle(fontFamily: 'Montserrat'),
                        ),
                      ),
                    ),

                    //Kata Sandi
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 16),
                      // padding: const EdgeInsets.only(top: 15),
                      child: TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Kata Sandi tidak boleh kosong';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          // icon: Icon(Icons.add_a_photo),
                          prefixIcon: const Icon(Icons.lock),
                          // prefixText: 'Email',
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Kata Sandi',
                          hintStyle: const TextStyle(fontFamily: 'Montserrat'),
                        ),
                      ),
                    ),

                    //Ulangi kata sandi
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 16),
                      // padding: const EdgeInsets.only(top: 15),
                      child: TextFormField(
                        controller: _repeatpasswordController,
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Ulangi Kata Sandi tidak boleh kosong';
                          } else if (value != _passwordController.text) {
                            return 'Ulangi Kata Sandi tidak sama';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          prefixIcon: const Icon(Icons.lock),
                          // prefixText: 'Email',
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Ulangi Kata Sandi',
                          hintStyle: const TextStyle(fontFamily: 'Montserrat'),
                        ),
                      ),
                    ),

                    //Daftar
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            // padding: const EdgeInsets.only(top: 15),
                            child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('Processing Data')),
                                  );
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                primary: const Color(0XFFFDB515),
                                onPrimary: Colors.black,
                                onSurface: Colors.blue,
                                shadowColor: Colors.yellow,
                                minimumSize: const Size(0, 50),
                                alignment: Alignment.center,
                                animationDuration: const Duration(
                                    milliseconds:
                                        200), //Durasi tombolnya ke angkat pas di klik
                                elevation: 2, //Kadar ketinggian elevasi nya
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.0))),
                              ),
                              child: const Text(
                                'Daftar!',
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

              // gambar
              const Padding(
                padding: EdgeInsets.only(top: 15),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Image(
                    image: AssetImage('assets/images/bottom.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
