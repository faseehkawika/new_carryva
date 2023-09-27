import 'package:flutter/material.dart';

import 'apptext.dart';

class AppButton extends StatefulWidget {
  Function() function;
  double buttonHeight;
  double buttonWidth;
  String text;
  Color color;
  Color textColor;
  double textSize;

  AppButton({super.key,required this.color,required this.text,required this.buttonHeight,required this.buttonWidth,required this.textSize,required this.textColor,required this.function});

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.function,
      child: Container(
          height: widget.buttonHeight,
          width: widget.buttonWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color:widget.color,
          ),
          child:Center(child: AppText(widget.text, widget.textSize, widget.textColor,FontWeight.w600 ))
      ),
    );
  }
}
