import 'package:flutter/material.dart';
import 'package:new_carryva/main.dart';
import 'package:new_carryva/utilities/apptext.dart';
import 'package:new_carryva/utilities/spaceAroundField.dart';

import '../constants/image/image.dart';

class StoreCard extends StatefulWidget {
  const StoreCard({super.key});

  @override
  State<StoreCard> createState() => _StoreCardState();
}

class _StoreCardState extends State<StoreCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height*0.4,
      width: width,
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(Images.foodImage,fit: BoxFit.fill,height: height*0.25,
          width: width,),
          SpaceAroundField(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText("അമ്മച്ചികട", width*0.045, Colors.black, FontWeight.w600),
              Row(
                children: [
                  AppText("4.5", width*0.045, Colors.black, FontWeight.w600),
                  Icon(Icons.star,color: Colors.yellow,)

                ],
              ),
            ],
          ),
          AppText("Breakfast - Lunch - Dinner", width*0.035, Colors.grey.shade500, FontWeight.w400),
          AppText("25 - 30 min - 2KM", width*0.035, Colors.black, FontWeight.w400),


        ],
      )
    );
  }
}
