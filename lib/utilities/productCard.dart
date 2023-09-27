import 'package:flutter/material.dart';
import 'package:new_carryva/main.dart';
import 'package:new_carryva/utilities/apppadding.dart';
import 'package:new_carryva/utilities/apptext.dart';
import 'package:new_carryva/utilities/spaceAroundField.dart';

import '../constants/image/image.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: height*0.55,
        width: width,
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(Images.biriyaniImage,fit: BoxFit.fill,height: height*0.4,
              width: width,),
            Container(
              padding: appPadding(
                bottom: 0
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText("അമ്മച്ചികട", width*0.045, Colors.black, FontWeight.w600),
                      AppText("₹144", width*0.05, Colors.black, FontWeight.w700),

                    ],
                  ),
                  Row(
                    children: [
                      AppText("4.5", width*0.045, Colors.black, FontWeight.w600),
                      Icon(Icons.star,color: Colors.yellow,),
                      SpaceAroundField(width: width*0.02,),
                      AppText("375 Rating", width*0.035, Colors.black, FontWeight.w400),
                    ],
                  ),
                  AppText("Small portion mandhi rice with choice of chicken", width*0.035, Colors.black, FontWeight.w400),
                ],
              ),
            ),
          ],
        )
    );
  }
}
