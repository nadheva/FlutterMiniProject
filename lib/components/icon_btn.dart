import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconBtn extends StatelessWidget {
  const IconBtn({
    Key? key,
    required this.text,
    required this.press,
    required this.icon,
    required this.borderColor,
    required this.color,
    required this.textColor,
    required this.shadowColor,
  }) : super(key: key);
  final icon, color, textColor, shadowColor, borderColor;
  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: press,
      icon: icon,
      label: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text(
          text,
          style: TextStyle(fontFamily: 'Montserrat'),
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: color,
        onPrimary: textColor,
        // onSurface: Colors.blue,
        shadowColor: shadowColor,
        minimumSize: Size(0, 50),
        alignment: Alignment.centerLeft,
        side: BorderSide(
          color: borderColor,
          width: 1,
        ),
        animationDuration: Duration(
            milliseconds: 200), //Durasi tombolnya ke angkat pas di klik
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
