import 'package:flutter/material.dart';

import '../main.dart';

EdgeInsets appPadding(
    { double? top, double? left, double? right, double? bottom}) => EdgeInsets.only(
      left:left ?? width * 0.06,
      top:top?? height * 0.03,
      right:right?? width * 0.06,
      bottom:bottom?? height * 0.03);
