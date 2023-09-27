import 'package:flutter/material.dart';

import '../constants/Colour/Colours.dart';

OutlineInputBorder outlineInputBorder(Color color)
{
  return OutlineInputBorder(
      borderRadius:
      BorderRadius.circular(
          20),
      borderSide: BorderSide(
          color: color
      )
  );
}