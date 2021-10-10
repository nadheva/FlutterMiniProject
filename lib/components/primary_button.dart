// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final color, textColor;
  final width;
  final shadowColor, borderColor;
  const PrimaryButton({
    Key? key,
    required this.text,
    required this.press,
    required this.color,
    required this.textColor,
    required this.width,
    required this.shadowColor,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: width,
      child: ElevatedButton(
        onPressed: press,
        style: ElevatedButton.styleFrom(
          primary: color,
          onPrimary: textColor,
          // onSurface: Colors.blue,
          shadowColor: shadowColor,
          minimumSize: Size(0, 50),
          alignment: Alignment.center,
          animationDuration: Duration(
              milliseconds: 200), //Durasi tombolnya ke angkat pas di klik
          elevation: 2, //Kadar ketinggian elevasi nya
          side: BorderSide(
            color: borderColor,
            width: 2,
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          // side: BorderSide(color: Colors.red.shade900, width: 2),
          // padding: EdgeInsets.all(10),
          // visualDensity: VisualDensity.compact, //Kepadatan sisi dengan dalamnya
        ),
        child: Text(
          text,
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
