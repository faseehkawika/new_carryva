import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_carryva/screens/mapscreen.dart';
import 'package:new_carryva/utilities/apptext.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../constants/Colour/Colours.dart';
import '../main.dart';
import '../utilities/apppadding.dart';

class OtpVerify extends StatelessWidget {
  String phone;

   OtpVerify({super.key,required this.phone});
   TextEditingController otpController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:SizedBox(
        height: height*0.08,
        width: width,
        child:Center(child: AppText("Go back to login Methods", width*0.04, Colors.red, FontWeight.w500))
      ) ,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(child: const Icon(Icons.arrow_back_ios_rounded,color: Colors.black,),
        onTap: (){
          Navigator.pop(context);
      },),
        centerTitle: true,
        title: AppText("Otp Verification", width*0.06, Colors.black, FontWeight.w600),
      ),
      body: SafeArea(
          child:SizedBox(
        height: height,
        width:width,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppText("We have send a verification code to", width*0.045, Colors.black, FontWeight.w500),
            AppText("+91 $phone", width*0.045, Colors.black, FontWeight.w500),

            Padding(
              padding: appPadding(
                top: height*0.02
              ),
              child: SizedBox(
                width: width*0.65,
                child: PinCodeTextField(
                  onCompleted: (value){
                    futureCall(context);
                  },
                  appContext: context,
                  length: 4,
                  cursorColor: Colors.black,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(
                      RegExp("[0-9]"),
                    ),
                  ],
                  animationType: AnimationType.scale,
                  controller: otpController,
                  keyboardType: TextInputType.number,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius:
                    BorderRadius.circular(10),
                    fieldHeight: height*0.08,
                    activeColor: Colours.kbuttonColor,
                    fieldWidth: width*0.14,
                    activeFillColor: Colors.white,
                    inactiveColor: Colors.blue,
                    selectedFillColor: Colors.blue,
                    inactiveFillColor: Colors.white,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppText("Didn't get the OTP?", width*0.045, Colors.black, FontWeight.w700),
                AppText(" Resend SMS in 10s", width*0.038, Colors.black, FontWeight.w500),
              ],
            )


          ],
        )
      )),
    );
  }
  void futureCall(BuildContext context) async
  {
    Future.delayed(const Duration(seconds: 3)).then((value) => Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MapScreen())));
  }
}
