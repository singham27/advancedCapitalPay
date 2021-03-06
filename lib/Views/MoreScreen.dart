import 'package:advanced_capital_pay/Components/ChatWithUs.dart';
import 'package:advanced_capital_pay/Components/PayingFromAccount.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:advanced_capital_pay/Controllers/MoreScreenController.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'Card/CardSetting.dart';
// import '../Views/CardSetting.dart';


class MoreScreen {
  static moreScreen() {
    final controller = Get.put(MoreScreenController());

    return Get.bottomSheet(
      Material(
          color: Colors.transparent,
          child: InkWell(
            child: Container(
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(borderRadius: EffectStyle.radiusCustom(14)),
              child: Scaffold(
                backgroundColor: Colors.transparent,
                body: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ListView.separated(
                        shrinkWrap: true,
                        itemCount: controller.arrMoreTitle.length,
                        padding: EdgeInsets.only(bottom: 100),
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: 10,
                          );
                        },
                        itemBuilder: (context, index) {
                          return InkWell(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 216,
                                  padding: EffectStyle.padding(16, 16, 6, 6),
                                  decoration: BoxDecoration(
                                      color: ColorStyle.primaryWhite,
                                      borderRadius: EffectStyle.radiusCustom(30),
                                      border: Border.all(
                                        color: ColorStyle.hex('#0066FF'),
                                        width: 1,
                                      )),
                                  child: Row(
                                    children: [
                                      Container(
                                        child: controller.arrMoreIcons[index],
                                        height: 20,
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Text(
                                        controller.arrMoreTitle[index],
                                        style: TextStylesPoppins.textStyles_14.apply(
                                            color: ColorStyle.hex('#0066FF'),
                                            fontWeightDelta: 0),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            onTap: () {
                              Get.back();


                              if (index == 0) {

                              } else if (index == 1) {
                                // ChatWithUs.chatWithUs();
                                // Get.to(PayingFromAccount());
                              } else if (index == 2) {
                                // ChatWithUs.chatWithUs();
                              } else if (index == 3) {
                                Get.to(CardSetting());
                              } else if (index == 4) {
                                ChatWithUs.chatWithUs();
                              }
                            },
                          );
                        })
                  ],
                )
              ),
            ),
            onTap: () {
              Get.back();
            },
          )
      ),
      // isScrollControlled: true,
      isDismissible: true,
      // enableDrag: true,
    );
  }
}


