import 'package:flutter/material.dart';
import 'package:new_carryva/constants/Colour/Colours.dart';
import 'package:new_carryva/utilities/apptext.dart';

import '../constants/image/image.dart';
import '../main.dart';
import 'apppadding.dart';

class HomeScreenHead extends StatefulWidget {
  const HomeScreenHead({super.key});

  @override
  State<HomeScreenHead> createState() => _HomeScreenHeadState();
}

class _HomeScreenHeadState extends State<HomeScreenHead> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height*0.13,
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.my_location,color: Colours.kbuttonColor,size: width*0.075,),
          Container(
            width: width*0.7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText("Technopark Campus", width*0.042, Colors.black, FontWeight.w700),
                AppText("Kazhakkuttam,Technopark,Thiruvananthapuram", width*0.035, Colors.black, FontWeight.w400,overFlow: TextOverflow.ellipsis,)
              ],
            ),
          ),
          ImageIcon(AssetImage(Images.languageLogo),size: width*0.075,color: Colors.black,)
        ],
      )

    );
  }
}
