import 'package:flutter/material.dart';
import 'package:new_carryva/main.dart';
import 'package:new_carryva/utilities/apptext.dart';

class CategoryCard extends StatefulWidget {
  String product;
  String image;
   CategoryCard({super.key,required this.image,required this.product});

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height*0.15,
      width: width*0.3,
      child: Column(
        children: [
          SizedBox(height: height*0.1,child: Image.asset(widget.image,fit: BoxFit.cover,)),
          AppText(widget.product, width*0.038, Colors.black, FontWeight.w500)
        ],
      ),
    );
  }
}
