import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_carryva/constants/Colour/Colours.dart';
import 'package:new_carryva/screens/categoryScreen.dart';
import 'package:new_carryva/screens/storePage.dart';
import 'package:new_carryva/utilities/apptext.dart';
import 'package:new_carryva/utilities/categoryCard.dart';
import 'package:new_carryva/utilities/homeScreenHead.dart';
import 'package:new_carryva/utilities/spaceAroundField.dart';
import 'package:new_carryva/utilities/storeCard.dart';

import '../constants/image/image.dart';
import '../main.dart';
import '../utilities/apppadding.dart';
import '../utilities/formfield_border.dart';

class HomeScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  CarouselController carouselController = CarouselController();
  List <String> categories=['Homely Food','Grocery','Meat and Fish','Homely Cake','Donate Food','Fruit and Veg'];
  List<String> images = [
    Images.foodImage,
    Images.vegSoupImage,
    Images.biriyaniImage,
    Images.mandiImage,
  ];
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: appPadding(
            left: width * 0.03, top: 0, bottom: 0, right: width * 0.03),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(
            decelerationRate: ScrollDecelerationRate.fast
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryScreen()));
                        },
                        child: CategoryCard(
                            image: Images.homelyFoodImage, product: "Homely Food"),
                      ),
                      CategoryCard(
                          image: Images.groceryImage, product: "Grocery"),
                      CategoryCard(
                          image: Images.meatFishImage, product: "Meat and Fish"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CategoryCard(
                          image: Images.homelyCakeImage, product: "Homely Cake"),
                      CategoryCard(
                          image: Images.donateFoodImage, product: "Donate Food"),
                      CategoryCard(
                          image: Images.fruitImage, product: "Fruit and Veg"),
                    ],
                  )
                ],
              ),
              SpaceAroundField(),
              CarouselSlider(
                carouselController: carouselController,
                  items: List.generate(
                      images.length,
                      (index) => Container(
                        height: height*0.3,
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
              SpaceAroundField(),
              AppText("Quick picks for you", width*0.045, Colors.black, FontWeight.w600),
              SpaceAroundField(),
              SizedBox(
                height: height*0.05,
                width: width,
                child: ListView.separated(
                  separatorBuilder: (context,index){
                    return SpaceAroundField(
                      width: width*0.02,
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context,index){
                    return Container(
                      padding: appPadding(
                        top: height*0.005,
                        bottom: height*0.005,
                        left: width*0.03,
                        right: width*0.03
                      ),
                      decoration: BoxDecoration(
                          color: Colours.kbuttonColor
                      ,borderRadius: BorderRadius.circular(15)
                      ),
                      height: height*0.05,
                      child: Center(child: AppText(categories[index], width*0.035, Colors.white, FontWeight.w500)),
                    );
                  },
                  itemCount: categories.length,

                ),
              ),
              SpaceAroundField(),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>StorePage()));
                },
                  child: StoreCard()),
              SpaceAroundField()
            ],
          ),
        ),
      )),
    );
  }
}
