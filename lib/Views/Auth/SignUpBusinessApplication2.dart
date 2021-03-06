import 'package:advanced_capital_pay/Components/AppBarStyle.dart';
import 'package:advanced_capital_pay/Components/ButtonCustom.dart';
import 'package:advanced_capital_pay/Components/ComponentsSignUp.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:advanced_capital_pay/Views/Auth/EffectStyleSignUp.dart';
import 'package:advanced_capital_pay/Views/Auth/SignUpPersonalEditSignature.dart';
import 'package:flutter/material.dart';


import 'package:country_picker/country_picker.dart';



class SignUpBusinessApplication2 extends StatelessWidget {
  const SignUpBusinessApplication2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          ImageStyle.bg_1,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.cover,
        ),
        Scaffold(
            appBar: AppBarStyleStatusBar(),
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              padding: EffectStyle.padding(16, 16, 0, 16),
              child: Column(
                children: [
                  Image.asset(
                    ImageStyle.application,
                    width: MediaQuery.of(context).size.width,
                    // fit: BoxFit.fill,
                    // height: heightAppBar,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  ComponentsSignUp.topProgress('-1'),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                      // padding: EdgeInsets.only(left: 20, right: 20),
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                              child: Text(
                                'ACFVC8JTJ',
                                style: TextStylesPoppins.textStyles_14.apply(
                                  color: ColorStyle.primaryWhite,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              alignment: Alignment.center,
                              width: 102,
                              height: 43,
                              decoration: EffectStyleSignUp.decoration(
                                  ColorStyle.darkestBlueSignUp, 0)),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            padding: EffectStyle.padding(16, 16, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ComponentsSignUp.title(
                                  'Verify Directors, Shareholders And Authorized Account Signatures',
                                ),

                                SizedBox(
                                  height: 12,
                                ),

                                Text(
                                  'Check and Verify the information of individuals below. '
                                  ' If the information is incorrect you '
                                  ' may edit, remove or add individuals. ',
                                  style: TextStylesPoppins.textStyles_14.apply(
                                    color: ColorStyle.secondryBlack,
                                    fontWeightDelta: 1,
                                  ),
                                ),
                                SizedBox(
                                  height: 18,
                                ),

                                Row(
                                  children: [
                                    Icon(
                                      Icons.cancel_outlined,
                                      size: 22,
                                      color: ColorStyle.grey,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Company director',
                                      style: TextStylesPoppins.textStyles_12.apply(
                                        color: ColorStyle.secondryBlack,
                                        fontWeightDelta: 1,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.cancel_outlined,
                                      size: 22,
                                      color: ColorStyle.grey,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Shareholder (10% or more)',
                                      style: TextStylesPoppins.textStyles_12.apply(
                                        color: ColorStyle.secondryBlack,
                                        fontWeightDelta: 1,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    ComponentsSignUp.check(),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Authorized Signature',
                                      style: TextStylesPoppins.textStyles_12.apply(
                                        color: ColorStyle.secondryBlack,
                                        fontWeightDelta: 1,
                                      ),
                                    ),
                                  ],
                                ),

                                SizedBox(
                                  height: 18,
                                ),
                                // Container(
                                //   height: 1,
                                //   color: ColorStyle.grey,
                                // ),

                                InkWell(
                                  child: Container(
                                      alignment: Alignment.topCenter,
                                      padding: EffectStyle.padding(20, 20, 14, 0),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.add_circle_outline_sharp,
                                                size: 28,
                                                color:
                                                ColorStyle.darkestBlueSignUp,
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                'Add an additional',
                                                style: TextStylesPoppins.textStyles_16
                                                    .apply(
                                                  color: ColorStyle
                                                      .darkestBlueSignUp,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                'Director, Shareholder',
                                                style: TextStylesPoppins.textStyles_16
                                                    .apply(
                                                  color: ColorStyle
                                                      .darkestBlueSignUp,
                                                ),
                                              ),
                                              Text(
                                                'Authorized Signature to',
                                                style: TextStylesPoppins.textStyles_16
                                                    .apply(
                                                  color: ColorStyle
                                                      .darkestBlueSignUp,
                                                ),
                                              ),
                                              Text(
                                                'the Account',
                                                style: TextStylesPoppins.textStyles_16
                                                    .apply(
                                                  color: ColorStyle
                                                      .darkestBlueSignUp,
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      height: 150,
                                      decoration: EffectStyleSignUp.decoration(
                                          Colors.transparent, 2)),
                                  onTap: () {
                                    SignUpPersonalEditSignature.personalApplication6();
                                  },
                                ),

                                SizedBox(
                                  height: 40,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: ElevatedButtonCustom(
                                        text: 'Back to site',
                                        colorBG: ColorStyle.darkestBlueSignUp,
                                        radiusBorder: 2,
                                        colorBorder: ColorStyle.grey,
                                        textStyle: TextStylesPoppins.textStyles_16
                                            .apply(
                                                color: ColorStyle.primaryWhite,
                                                fontWeightDelta: 1),
                                        onTap: () {},
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                      child: ElevatedButtonCustom(
                                        text: 'Continue',
                                        colorBG: ColorStyle.darkestBlueSignUp,
                                        radiusBorder: 2,
                                        colorBorder: ColorStyle.grey,
                                        textStyle: TextStylesPoppins.textStyles_16
                                            .apply(
                                                color: ColorStyle.primaryWhite,
                                                fontWeightDelta: 1),
                                        onTap: () {
                                          // Get.to(PersonalApplication3());
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      decoration: EffectStyleSignUp.decoration()),
                  ComponentsSignUp.bottomUI(),
                ],
              ),
            )),
      ],
    );
  }
}
