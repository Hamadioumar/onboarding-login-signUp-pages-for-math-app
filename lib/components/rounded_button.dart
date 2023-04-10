import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color color, textcolor;
  const RoundedButton(
      {Key? key,
      required this.text,
      required this.press,
      required this.color,
      required this.textcolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.height * 0.45,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: MaterialButton(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          color: color,
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(color: textcolor),
          ),
        ),
      ),
    );
  }
}
