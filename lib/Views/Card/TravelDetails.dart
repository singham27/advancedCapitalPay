import 'package:advanced_capital_pay/Components/AppBarStyle.dart';
import 'package:advanced_capital_pay/Components/ButtonChat.dart';
import 'package:advanced_capital_pay/Components/ButtonCustom.dart';
import 'package:advanced_capital_pay/Components/PopUp.dart';
import 'package:advanced_capital_pay/Components/SwitchButtonCustom.dart';
import 'package:advanced_capital_pay/Components/TextFieldCustom.dart';
import 'package:advanced_capital_pay/Controllers/Travel/TravelDetailsController.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';


class TravelDetails extends StatelessWidget {
  TravelDetails({Key? key}) : super(key: key);

  final controller = Get.put(TravelDetailsController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: TravelDetailsController(),
      initState: (state) {

      },
      builder: (auth) {
        return Obx(() => Scaffold(
            appBar: AppBarStyleTitle(
              title: 'Travel Details',
              backgroundColor: ColorStyle.darkestBlue,
              leadingButton: IconButton(
                icon: Image.asset(
                  ImageStyle.back_circle,
                  height: 30,
                ),
                onPressed: () {
                  Get.back();
                },
              ),
              trailingButton: [ButtonChat(),],
            ),
            backgroundColor: ColorStyle.primaryWhite,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        ImageStyle.Group2201,
                        width: MediaQuery.of(context).size.width,
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        top: 10,
                        right: 10,
                        child: Row(
                          children: [
                            Text(
                              'Edit Image',
                              style: TextStylesPoppins.textStyles_12.apply(
                                  fontWeightDelta: 1,
                                  color: ColorStyle.primaryWhite),
                            ),
                            SizedBox(width: 10),
                            Image.asset(
                              ImageStyle.search_interface_symbol,
                              height: 24,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            color: ColorStyle.secondryBlack.withOpacity(0.7),
                            padding: EffectStyle.padding(16, 16, 6, 6),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "20",
                                      style: TextStylesPoppins.textStyles_32.apply(
                                          color: ColorStyle.primaryWhite,
                                          fontWeightDelta: 1),
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "November",
                                          // controller.listApplyLeave[index],
                                          style: TextStylesPoppins.textStyles_10.apply(
                                              color: ColorStyle.primaryWhite,
                                              fontWeightDelta: 1),
                                        ),
                                        Text(
                                          "Departing",
                                          // controller.listApplyLeave[index],
                                          style: TextStylesPoppins.textStyles_10.apply(
                                              color: ColorStyle.primaryWhite,
                                              fontWeightDelta: 1),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "15",
                                      style: TextStylesPoppins.textStyles_32.apply(
                                          color: ColorStyle.primaryWhite,
                                          fontWeightDelta: 1),
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "December",
                                          // controller.listApplyLeave[index],
                                          style: TextStylesPoppins.textStyles_10.apply(
                                              color: ColorStyle.primaryWhite,
                                              fontWeightDelta: 1),
                                        ),
                                        Text(
                                          "Arriving",
                                          // controller.listApplyLeave[index],
                                          style: TextStylesPoppins.textStyles_10.apply(
                                              color: ColorStyle.primaryWhite,
                                              fontWeightDelta: 1),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Seychelles',
                          style: TextStylesPoppins.textStyles_16.apply(
                              fontWeightDelta: 2,
                              color: ColorStyle.secondryBlack),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Travel Title',
                          // controller.listApplyLeave[index],
                          style: TextStylesPoppins.textStyles_14.apply(
                              fontWeightDelta: 2,
                              color: ColorStyle.secondryBlack),
                        ),
                        SizedBox(
                          height: 10,
                        ),

                        TextFieldCustom(
                          hintText: "'Savannah\'s Wedding 25th November 2022'",
                          colorFill: ColorStyle.primaryWhite,
                          colorBoder: ColorStyle.secondryBlack,
                          radiusBorder: 50,
                        ),

                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Your Private Travel Notes',
                          // controller.listApplyLeave[index],
                          style: TextStylesPoppins.textStyles_14.apply(
                              fontWeightDelta: 2,
                              color: ColorStyle.secondryBlack),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        TextFieldCustom(
                          hintText: "Savannah's Wedding in Seychelles\n\n"
                              " Reminder to contact Savannah's mum and "
                              "thank her for sorting out the flight details.",
                          colorFill: ColorStyle.primaryWhite,
                          colorBoder: ColorStyle.secondryBlack,
                          radiusBorder: 20,
                          maxLines: 5,
                        ),

                        SizedBox(
                          height: 30,
                        ),


                        Text(
                          'Overseas I Plan To',
                          // controller.listApplyLeave[index],
                          style: TextStylesPoppins.textStyles_14.apply(
                              fontWeightDelta: 2,
                              color: ColorStyle.secondryBlack),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              child: Row(
                                children: [
                                  Image.asset(
                                    ImageStyle.searchsymbol,
                                    width: 24,
                                    height: 24,
                                    // fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    'Use ATMs Frequently',
                                    style: TextStylesPoppins.textStyles_12.apply(
                                        fontWeightDelta: 1,
                                        color: ColorStyle.secondryBlack),
                                  ),
                                ],
                              ),
                            ),
                            SwitchButtonCustom.switchButton(controller.isUseATMFrequenlty.value, (value) {
                              controller.isUseATMFrequenlty.value = value;
                            }),
                          ],
                        ),
                        SizedBox(
                          height: 21,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              child: Row(
                                children: [
                                  Image.asset(
                                    ImageStyle.coins,
                                    width: 24,
                                    height: 24,
                                    // fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    'Make Large Purchases',
                                    // controller.listApplyLeave[index],
                                    style: TextStylesPoppins.textStyles_12.apply(
                                        fontWeightDelta: 1,
                                        color: ColorStyle.secondryBlack),
                                  ),
                                ],
                              ),
                            ),
                            SwitchButtonCustom.switchButton(controller.isMakeLargePurchases.value, (value) {
                              controller.isMakeLargePurchases.value = value;
                            }),
                          ],
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          'If you\'ve got an idea of how you\'ll '
                              'be using your cards, let us know, it\'ll help us keep '
                              'an eye out for suspicious activity.',
                          style: TextStylesPoppins.textStyles_12.apply(
                              fontWeightDelta: 1,
                              color: ColorStyle.secondryBlack),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(child: ElevatedButtonCustom(
                              text: 'Delete',
                              textStyle: TextStylesPoppins.textStyles_14
                                  .apply(color: ColorStyle.blueSKY),
                              colorBG: ColorStyle.primaryWhite,
                              colorBorder: ColorStyle.blueSKY,
                              radiusBorder: 40,
                              onTap: () {

                              },
                            )),
                            SizedBox(width: 16,),
                            Expanded(child: ElevatedButtonCustom(
                              text: 'Submit',
                              textStyle: TextStylesPoppins.textStyles_14
                                  .apply(color: ColorStyle.primaryWhite),
                              colorBG: ColorStyle.darkestBlueSignUp,
                              colorBorder: ColorStyle.darkestBlueSignUp,
                              radiusBorder: 40,
                              onTap: () {
                                // Get.to(NewBeneficiary());
                                TravelPopUp.travelPopUp();
                              },
                            )),
                          ],
                        ),
                        SizedBox(height: 30,),
                      ],
                    ),
                  ),
                ],
              ),
            )));
      },
    );


  }
}