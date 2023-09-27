
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_carryva/utilities/apptextStyle.dart';

class AppText extends StatefulWidget {
  String text;
  double size;
  Color color;
  FontWeight weight;
  TextOverflow? overFlow;

  AppText(this.text,this.size,this.color,this.weight,{super.key,this.overFlow});

  @override
  State<AppText> createState() => _AppTextState();
}

class _AppTextState extends State<AppText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      textAlign: TextAlign.center,
      style:appTextStyle(color: widget.color, weight: widget.weight, size: widget.size),
      overflow: widget.overFlow,
    );
  }
}
