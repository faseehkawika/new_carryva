import 'package:flutter/cupertino.dart';
import 'package:new_carryva/main.dart';

class SpaceAroundField extends StatefulWidget {
  double? height;
  double? width;
   SpaceAroundField({super.key,this.height,this.width});

  @override
  State<SpaceAroundField> createState() => _SpaceAroundFieldState();
}

class _SpaceAroundFieldState extends State<SpaceAroundField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height ?? height*0.03,
      width:widget.width ?? 0
    );
  }
}
