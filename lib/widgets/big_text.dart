import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  final Color color; // ? means optional
  final String text;
  double size;
  TextOverflow overflow;

  BigText({
    Key? key,
    required this.color,
    required this.text,
    required this.size,
    this.overflow = TextOverflow.ellipsis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text, //text that we will pass
      maxLines: 1, //if more than 1 line then overflow ellipse
      overflow: overflow,
      style: TextStyle(
          color: color, //color pass
          fontWeight: FontWeight.w400,
          fontSize: size, //default fontweight
          fontFamily: 'Roboto'),
    );
  }
}
