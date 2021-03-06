import 'dart:ui';
import 'package:advanced_capital_pay/Components/AppBarStyle.dart';
import 'package:advanced_capital_pay/Components/BackgroundImage.dart';
import 'package:advanced_capital_pay/Controllers/BioMatric_VerificationController.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';



class BioMatric_Verification extends StatelessWidget {
  BioMatric_Verification({Key? key}) : super(key: key);

  final controller = Get.put(BioMatric_VerificationController());

  @override
  Widget build(BuildContext context) {
    return  GetBuilder(
      init: BioMatric_VerificationController(),
      initState: (state) {
         controller.reset();
      },
      builder: (auth) {
        return  Obx(() => Stack(
          children: [
            BackgroundImage(
              imageName: ImageStyle.bg_BioMatric,
            ),
            Scaffold(
                backgroundColor: Colors.transparent,
                appBar: AppBarStyle(),
                body: Container(
                  // height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // height: 180,
                        padding: EffectStyle.padding(40, 40, 0, 0),
                        width: MediaQuery.of(context).size.width,
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (controller.verifyStep.value == 0)
                              Text(
                                'Hello',
                                textAlign: TextAlign.left,
                                style: TextStylesPoppins.textStyles_24.apply(
                                  color: ColorStyle.primaryWhite,
                                  fontWeightDelta: 1,
                                ),
                              ),
                            if (controller.verifyStep.value == 0)
                              Text(
                                'HARRISON SMIT,',
                                textAlign: TextAlign.left,
                                style: TextStylesPoppins.textStyles_24.apply(
                                  color: ColorStyle.primaryWhite,
                                  fontWeightDelta: 1,
                                ),
                              ),
                            if (controller.verifyStep.value == 0)
                              Text(
                                'Use Face ID to login to your account.',
                                textAlign: TextAlign.left,
                                style: TextStylesPoppins.textStyles_16.apply(
                                  color: ColorStyle.grayColor,
                                  fontWeightDelta: 0,
                                ),
                              ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            height: 180,
                            width: 180,
                            child: Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: ColorStyle.hex("#263868"),
                                    borderRadius:
                                    EffectStyle.radiusCustom(20),
                                  ),
                                ),
                                if (controller.verifyStep.value == 0 ||
                                    controller.verifyStep.value == 1)
                                  Center(
                                      child: Image.asset(
                                        ImageStyle.faceID_Icon,
                                        color: (controller.verifyStep.value == 0)
                                            ? ColorStyle.primaryWhite.withOpacity(0.1)
                                            : ColorStyle.primaryWhite,
                                        width: 120,
                                        height: 120,
                                      )),
                                if (controller.verifyStep.value == 3)
                                  Center(
                                      child: Icon(Icons.check,
                                          size: 75,
                                          color: ColorStyle.green)),
                              ],
                            ),
                          ),
                          SizedBox(height: 16,),
                          if (controller.verifyStep.value == 3)
                            Text(
                              'Successfull Login',
                              textAlign: TextAlign.left,
                              style: TextStylesPoppins.textStyles_14.apply(
                                color: ColorStyle.green,
                                fontWeightDelta: 0,
                              ),
                            ),
                        ],
                      ),
                      Container(
                        height: 180,
                        width: 180,
                      ),
                    ],
                  ),
                ))
          ],
        ));
      },
    );


  }
}
