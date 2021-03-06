import 'package:advanced_capital_pay/Components/AppBarStyle.dart';
import 'package:advanced_capital_pay/Components/BackgroundImage.dart';
import 'package:advanced_capital_pay/Components/ButtonChat.dart';
import 'package:advanced_capital_pay/Components/ButtonCustom.dart';
import 'package:advanced_capital_pay/Components/TextFieldCustom.dart';
import 'package:advanced_capital_pay/Controllers/SignUp/SignUpVerifyQuestionController.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:advanced_capital_pay/Views/Auth/SignIn.dart';
// import 'package:advanced_capital_pay/Views/SignIn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:auto_size_text/auto_size_text.dart';

import 'BioMatric_Permission.dart';
class SignUpVerifyQuestion extends StatelessWidget {
  SignUpVerifyQuestion({Key? key}) : super(key: key);

  final controller = Get.put(SignUpVerifyQuestionController());

  securityQuestionsBox(
      String title, String selectedValue, Function(String?)? onChanged) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(Get.context!).size.width,
          alignment: Alignment.centerLeft,
          padding: EffectStyle.padding(10, 10, 6, 10),
          decoration: BoxDecoration(
            color: ColorStyle.primaryWhite,
            borderRadius: EffectStyle.radiusCustom(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  title,
                  textAlign: TextAlign.left,
                  style: TextStylesPoppins.textStyles_14.apply(
                    color: ColorStyle.blueSKY,
                    // fontWeightDelta: 0,
                  ),
                ),
              ),
              SizedBox(
                height: 6,
              ),
              // DropdownButtonCustom(
              //     onChanged: onChanged,
              //     listValue: controller.items.value,
              //     selectedValue: selectedValue),
              Container(
                width: MediaQuery.of(Get.context!).size.width,
                padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 12,
                  bottom: 12,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: ColorStyle.blueLight,
                    width: 1,
                  ),
                  borderRadius: EffectStyle.radiusCustom(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        selectedValue,
                        textAlign: TextAlign.left,
                        maxLines: 1,
                        style: TextStylesPoppins.textStyles_14.apply(
                          color: Colors.black,
                          // fontWeightDelta: 1,
                        ),
                      ),
                    ),
                    Image.asset(
                      ImageStyle.dropDown,
                      height: 16,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFieldCustom(
                colorBoder: ColorStyle.blueLight,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          'You have entered the incorrect security answer.Please try again.',
          style: TextStylesPoppins.textStyles_14.apply(
            color: Colors.red,
            // fontWeightDelta: 1,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: SignUpVerifyQuestionController(),
      initState: (state) {
          controller.reset();
      },
      builder: (auth) {
        return Obx(() => Stack(
          children: [
            BackgroundImage(
              imageName: ImageStyle.bg,
            ),
            Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBarStyle(
                leadingButton: IconButton(
                  icon: Image.asset(
                    ImageStyle.user_logout,
                    height: 30,
                  ),
                  onPressed: () {
                    Get.offAll(SignIn());
                  },
                ),
                trailingButton: ButtonChat(),
              ),
              body: SingleChildScrollView(
                padding: EdgeInsets.only(
                  left: 30,
                  right: 30,
                  // top: 80,
                  top: 0,
                  bottom: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Verify your Security Questions',
                      textAlign: TextAlign.left,
                      style: TextStylesPoppins.textStyles_20.apply(
                        color: ColorStyle.primaryWhite,
                        fontWeightDelta: 2,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Instead of receiving your One Time Password (OTP) You can enter the passwords to your security questions.",
                      textAlign: TextAlign.left,
                      style: TextStylesPoppins.textStyles_14.apply(
                        color: ColorStyle.primaryWhite,
                        fontWeightDelta: 0,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: Row(
                            children: [
                              Text(
                                'Use SMS Verification',
                                style: TextStylesPoppins.textStyles_14.apply(
                                  color: ColorStyle.blueSKY,
                                  fontWeightDelta: 1,
                                ),
                              ),
                            ],
                          ),
                          onTap: () {
                            Get.back();
                          },
                        ),
                        InkWell(
                          child: Text(
                            'Contact Us',
                            style: TextStylesPoppins.textStyles_14.apply(
                              color: ColorStyle.blueSKY,
                              fontWeightDelta: 1,
                            ),
                          ),
                          onTap: () {},
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    securityQuestionsBox(
                      'Security question 1',
                      controller.selectedValueOne.value,
                          (newValue) {
                        controller.selectedValueOne.value = newValue!;
                      },
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    securityQuestionsBox(
                      'Security question 2',
                      controller.selectedValueTwo.value,
                          (newValue) {
                        controller.selectedValueTwo.value = newValue!;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    AutoSizeText(
                      'Forgot your security question ?',
                      style: TextStylesPoppins.autoSizeText.apply(
                        color: ColorStyle.blueSKY,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: GradientButton(
                        text: 'Sign in',
                        onTap: () {
                          Get.to(BioMatric_Permission());
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
      },
    );


  }
}
