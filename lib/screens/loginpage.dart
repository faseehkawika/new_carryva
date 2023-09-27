import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_carryva/main.dart';
import 'package:new_carryva/screens/otpverification.dart';
import 'package:new_carryva/utilities/appButton.dart';
import 'package:new_carryva/utilities/apppadding.dart';
import 'package:new_carryva/utilities/apptext.dart';
import 'package:new_carryva/utilities/apptextStyle.dart';
import 'package:new_carryva/utilities/formfield_border.dart';
import '../constants/Colour/Colours.dart';
import '../constants/image/image.dart';

class LoginPage extends StatelessWidget {

  LoginPage({super.key});
  String text='''"A Taste of Home,\nWherever You Roam!" ''';
  TextEditingController phoneController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    height=MediaQuery.of(context).size.height;
    width=MediaQuery.of(context).size.width;
    return Scaffold(
      body:SafeArea(child: Container(
        height: height,
        width: width,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Center(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(Images.loginScreenImage,width: width,height: height*0.4,fit:BoxFit.fill),
                Text(
                  text,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.kavoon(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: width*0.05,
                  ),
                ),
                SizedBox(
                  height: height*0.03,
                ),
                Container(
                  height: height*0.08,
                  padding: appPadding(
                    bottom: 0,
                    top: 0,
                    left: width*0.05,
                    right: width*0.05
                  ),
                  child:TextFormField(
                    autocorrect: true,
                    autovalidateMode: AutovalidateMode.disabled,
                    controller: phoneController,
                    keyboardType:
                    TextInputType.number,
                    validator: (value) {

                      return null;
                    },
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                        RegExp("[0-9]"),
                      ),
                      LengthLimitingTextInputFormatter(10)
                    ],
                    decoration: InputDecoration(
                      prefix: Container(
                        child:const CountryCodePicker(
                          favorite: ["+91"],
                          countryFilter: ["+91"],
                          showFlag: false,
                        )
                      ),
                        hintText:
                        "Enter Phone Number",
                        hintStyle:
                        GoogleFonts.roboto(
                          color: Colors.grey.shade400,
                          fontWeight: FontWeight.w500,
                          fontSize: width * 0.035,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.circular(
                              20),
                          borderSide: BorderSide(
                            color: Colours.kbuttonColor
                          )
                        ),
                        border: outlineInputBorder(Colours.kbuttonColor)

                    ),
                  ),
                ),
                SizedBox(
                  height: height*0.03,
                ),
                AppButton(color: Colours.kbuttonColor, text: "SIGN IN", buttonHeight: height*0.08, buttonWidth: width*0.9, textSize: width*0.05, textColor: Colors.white, function: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpVerify(phone: phoneController.text,)));
                }),
                SizedBox(
                  height: height*0.02,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: width*0.475,
                      child: Divider(
                            height: height*0.05,
                            color: Colors.grey.shade300,
                            thickness: 1,
                            indent: width*0.05,
                           endIndent: width*0.05,
                          ),
                    ),
                    AppText("OR", width*0.03, Colors.grey.shade700, FontWeight.w500),
                    SizedBox(
                      width: width*0.475,
                      child: Divider(
                        height: height*0.05,
                        color: Colors.grey.shade300,
                        thickness: 1,
                        indent: width*0.05,
                        endIndent: width*0.05,
                      ),
                    ),

                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: height*0.0685,
                      width:width*0.135,
                      padding: appPadding(
                        top:height*0.005,
                        left:height*0.005,
                        right: height*0.005,
                        bottom: height*0.005,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.grey.shade300,
                          width: 0.3
                        ),
                        boxShadow: [BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 3,
                          spreadRadius: 3
                        )]
                      ),
                      child: Image.asset(Images.googleLogo,),
                    ),
                    SizedBox(width:width*0.1),
                    Container(
                      height: height*0.0685,
                      width:width*0.135,
                      padding: appPadding(
                        top:height*0.005,
                        left:height*0.005,
                        right: height*0.005,
                        bottom: height*0.005,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Colors.grey.shade300,
                              width: 0.3
                          ),
                          boxShadow: [BoxShadow(
                              color: Colors.grey.shade200,
                              blurRadius: 3,
                              spreadRadius: 3
                          )]
                      ),
                      child: Image.asset(Images.facebookLogo,),
                    ),
                  ],
                ),
                SizedBox(height:height*0.03),
                AppText("By Continuing, You Agree To Our", width*0.035, Colors.black, FontWeight.w400),
                Expanded(
                  flex: 0,
                    child: SizedBox(height:height*0.01)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    AppText("Terms and Conditions", width*0.035, Colors.black, FontWeight.w400),
                    AppText("Privacy Policies", width*0.035, Colors.black, FontWeight.w400),
                    AppText("Content Policies", width*0.035, Colors.black, FontWeight.w400),

                  ],
                ),


              ],
            )
          ),
        ),
      ))

    );
  }
}

