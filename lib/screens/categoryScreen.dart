import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_carryva/main.dart';
import 'package:new_carryva/utilities/apptext.dart';

import '../constants/Colour/Colours.dart';
import '../constants/image/image.dart';
import '../utilities/apppadding.dart';
import '../utilities/formfield_border.dart';
import '../utilities/homeScreenHead.dart';
import '../utilities/spaceAroundField.dart';

class CategoryScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  CarouselController carouselController = CarouselController();
  List<String> images = [
    Images.foodImage,
    Images.vegSoupImage,
    Images.biriyaniImage,
    Images.mandiImage,
  ];
  List <Map<String,String>> gridImages=[{"name":"Pothi Chor","image":Images.pothichorImage},
    {"name":"Vegetable Soup","image":Images.vegSoupImage},
    {"name":"Beef Biriyani","image":Images.biriyaniImage},
    {"name":"Mandi","image":Images.mandiImage},
    {"name":"Chicken Strew","image":Images.chickenStewImage},
    {"name":"Idili","image":Images.idiliImage},
    {"name":"Puttu","image":Images.puttuImage},
    {"name":"Chicken Biriyani","image":Images.biriyaniNewImage},



  ];
   CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Padding(
        padding: appPadding(
            left: width * 0.03, top: 0, bottom: 0, right: width * 0.03),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeScreenHead(),
              TextFormField(
                controller: searchController,
                keyboardType: TextInputType.name,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp("[a-zA-Z .,]"))
                ],
                decoration: InputDecoration(
                    hintText: "Search for area,Street name ...",
                    labelText: "Search for area,Street name",
                    prefixIcon: Icon(
                      Icons.search,
                      size: width * 0.075,
                      color: Colors.black,
                    ),
                    fillColor: Colors.grey.shade100,
                    border: outlineInputBorder(Colors.grey.shade300),
                    suffixIcon: ImageIcon(
                      AssetImage(Images.voiceSearchLogo),
                      size: width * 0.065,
                      color: Colours.kbuttonColor,
                    )),
              ),
              SpaceAroundField(),
              CarouselSlider(
                  carouselController: carouselController,
                  items: List.generate(
                      images.length,
                          (index) => Container(
                        height: height*0.2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(image: AssetImage(images[index],),fit: BoxFit.fill)
                        ),
                      )),
                  options: CarouselOptions(
                    viewportFraction: 1.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                  )),
              SpaceAroundField(height: height*0.02,),
              AppText("Sonu,What's on your mind?", width*0.045, Colors.black, FontWeight.w600),
              SpaceAroundField(height: height*0.02,),
              SizedBox(
                height: height*0.375,
                width: width,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                    physics: BouncingScrollPhysics(
                      decelerationRate: ScrollDecelerationRate.fast
                    ),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                    ),
                    itemBuilder:(context,index){
                      return Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(150),
                            child: Image.asset(gridImages[index]['image']!,height: width*0.25,width:width*0.25,fit: BoxFit.fill,),
                          ),
                          SpaceAroundField(height: height*0.015,),
                          AppText(gridImages[index]['name']!, width*0.035, Colors.black, FontWeight.w500)
                        ],
                      );
                    },
                itemCount: gridImages.length,),
              )
            ],
          ),
        ),
      )),
    );
  }
}
