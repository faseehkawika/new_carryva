import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_carryva/constants/Colour/Colours.dart';
import 'package:new_carryva/screens/homeScreen.dart';
import 'package:new_carryva/utilities/apppadding.dart';
import 'package:new_carryva/utilities/spaceAroundField.dart';

import '../main.dart';
import '../utilities/apptext.dart';
import '../utilities/formfield_border.dart';

class MapScreen extends StatelessWidget {
  TextEditingController placeController=TextEditingController();
  MapScreen({super.key});

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
        centerTitle: true,
        title: AppText("Select a location", width*0.06, Colors.black, FontWeight.w600),
      ),
      body:SafeArea(child: Container(
        padding: appPadding(),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            TextFormField(
              controller: placeController,
              keyboardType: TextInputType.name,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp("[a-zA-Z .,]"))
              ],
              decoration: InputDecoration(
                hintText: "Search for area,Street name ...",
                labelText: "Search for area,Street name",
                prefixIcon: Container(
                  padding: appPadding(
                    top: height*0.01,
                    bottom: height*0.01,
                    left: 0,
                    right: 0
                  ),
                  height: height*0.06,
                  width: width*0.15,
                  child: Row(
                    children: [
                      SizedBox(width: width*0.02,),
                      Icon(Icons.location_on_outlined,size: width*0.075,color: Colors.black,),
                      SizedBox(width: width*0.015,),
                      Container(
                        color: Colors.black,
                        width:width*0.005
                      )
                    ],
                  ),
                ),
                border: outlineInputBorder(
                  Colors.grey.shade300
                )
              ),
            ),
           SpaceAroundField(),
           InkWell(
             onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
             },
             child: Container(
               padding: appPadding(
                 bottom: 0,
                 top: 0,
                 left: width*0.03,
                 right:width*0.03,
               ),
               height: height*0.09,
               decoration: BoxDecoration(
                 border: Border.all(
                   color: Colours.kbuttonColor
                 ),
                   borderRadius: BorderRadius.circular(20)
               ),
               child: Row(
                 children: [
                   Icon(Icons.my_location,size: width*0.075,color: Colours.kbuttonColor,),
                   Expanded(child: AppText("Use Your Current Location", width*0.05, Colours.kbuttonColor, FontWeight.w600)),
                   Icon(Icons.arrow_forward_ios_rounded,size: width*0.065,color: Colours.kbuttonColor,)
                 ],
               ),
             ),
           )
            ],
          ),
        ),
      ))
    );
  }
}
