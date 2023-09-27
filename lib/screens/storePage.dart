import 'package:flutter/material.dart';
import 'package:new_carryva/main.dart';
import 'package:new_carryva/utilities/apppadding.dart';
import 'package:new_carryva/utilities/productCard.dart';
import 'package:new_carryva/utilities/spaceAroundField.dart';

import '../utilities/apptext.dart';

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(child: Icon(Icons.arrow_back_ios_rounded,color: Colors.black,),
          onTap: (){
            Navigator.pop(context);
          },),
        actions: [
          Icon(Icons.search_rounded,color: Colors.black,size: width*0.085,),
          SpaceAroundField(width: width*0.025,),
          Icon(Icons.favorite_border_outlined,color: Colors.black,size: width*0.085,),
          SpaceAroundField(width: width*0.025,),
          Icon(Icons.file_upload_outlined,color: Colors.black,size: width*0.085,),
          SpaceAroundField(width: width*0.025,),
        ],
        ),
      body: SafeArea(
          child: Center(
            child:Container(
              height: height,
              width: width,
              child:SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    SpaceAroundField(),
                    AppText("അമ്മച്ചികട", width*0.065, Colors.black, FontWeight.w700),
                    AppText("Breakfast - Lunch - Dinner", width*0.045, Colors.grey.shade600, FontWeight.w600),
                    SpaceAroundField(height: height*0.01,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Container(
                        height: height*0.05,
                        padding: appPadding(
                          top:height*0.005,
                          bottom:height*0.005,
                          left: width*0.03,
                            right: width*0.03
                        ),
                        decoration: BoxDecoration(
                          color: Colors.green.shade500,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            AppText("4.5", width*0.043, Colors.white, FontWeight.w700),
                            Icon(Icons.star,color: Colors.yellow,size:width*0.05 ,)
                          ]
                        ),
                      ),
                      AppText("19.7k rating", width*0.04, Colors.black, FontWeight.w600)
                      ],
                    ),
                    SpaceAroundField(height: height*0.01,),
                    AppText("30-35 min 4km . Kazhakuttom", width*0.04, Colors.black, FontWeight.w400),
                    SpaceAroundField(),
                    ProductCard(),
                    ProductCard()

                  ],
                ),
              )
            )

        )
      ),
    );
  }
}
