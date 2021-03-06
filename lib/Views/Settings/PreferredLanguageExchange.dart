import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:advanced_capital_pay/Components/AppBarStyle.dart';
import 'package:advanced_capital_pay/Components/BackgroundImage.dart';
import 'package:advanced_capital_pay/Controllers/PreferredLanguageSelection1Controller.dart';

import 'package:advanced_capital_pay/Components/ButtonChat.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';


class PreferredLanguageExchange extends StatelessWidget {
  const PreferredLanguageExchange({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(PreferredLanguageSelection1Controller());
    return GetBuilder(
      init: PreferredLanguageSelection1Controller(),
      initState: (state) {

      },
      builder: (auth) {
        return Obx(() => Stack(
          children: [
            BackgroundImageBeneficiary(),
            Scaffold(
                appBar: AppBarStyleCustomBenifi(
                  title: Text('Select Exchange From'),
                  leadingButton: BackButton(
                    onPressed: () {},
                  ),
                  trailingButton: ButtonChat(),
                ),
                backgroundColor: Colors.transparent,
                body: SingleChildScrollView(
                  padding: EdgeInsets.only(left: 14, right: 14, top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Container(
                          // margin: EdgeInsets.only(left: 4),
                          alignment: Alignment.center,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.search,
                                color: ColorStyle.primaryWhite
                                    .withOpacity(.4),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: TextField(
                                  // obscureText: true,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Search',
                                    hintStyle:
                                    TextStylesPoppins.textStyles_12.apply(
                                      color: ColorStyle.primaryWhite
                                          .withOpacity(.4),
                                      fontWeightDelta: 1,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          // width: 174,
                          height: 50,
                          decoration: BoxDecoration(
                              color:
                              ColorStyle.primaryWhite.withOpacity(.6),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Popular',
                        style: TextStylesPoppins.textStyles_14.apply(
                            color: ColorStyle.primaryWhite,
                            fontWeightDelta: 2),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        // padding: EdgeInsets.only(left: 10,right: 10),
                        // color: ColorStyle.blueSKY,
                        height: 240,
                        child: ListView.builder(
                            padding: EdgeInsets.only(top: 20),
                            shrinkWrap: true,
                            itemCount: controller.images1.length,
                            // itemCount: 1,
                            // scrollDirection: Axis.horizontal,
                            physics: BouncingScrollPhysics(),
                            itemBuilder:
                                (BuildContext context, int index) {
                              return Container(
                                margin: EdgeInsets.only(bottom: 10),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 12,
                                          ),
                                          Container(
                                            child: Image.asset(
                                              controller.images1[index],
                                              // height: 10,
                                            ),
                                            height: 64,
                                            width: 64,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(
                                                  40),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 12,
                                          ),
                                          Text(
                                            // ' Spare change',
                                            controller
                                                .choosePopular[index],
                                            style: TextStylesPoppins
                                                .textStyles_14
                                                .apply(
                                                color: ColorStyle
                                                    .secondryBlack,
                                                fontWeightDelta: 2),
                                          ),
                                          SizedBox(
                                            width: 12,
                                          ),
                                          Text(
                                            // ' Spare change',
                                            controller
                                                .choosePopular[index],
                                            style: TextStylesPoppins
                                                .textStyles_14
                                                .apply(
                                                color:
                                                ColorStyle.grey,
                                                fontWeightDelta: 2),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        // ' Spare change',
                                        controller.choosePopular2[index],
                                        style: TextStylesPoppins.textStyles_14
                                            .apply(
                                            color: ColorStyle
                                                .secondryBlack,
                                            fontWeightDelta: 2),
                                      ),
                                      padding: EdgeInsets.only(right: 12),
                                    )
                                    // SizedBox(width: 2,),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    color: ColorStyle.primaryWhite,
                                    borderRadius:
                                    BorderRadius.circular(10)),
                              );
                            }),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Cryptocurrencies',
                        style: TextStylesPoppins.textStyles_14.apply(
                            color: ColorStyle.primaryWhite,
                            fontWeightDelta: 2),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        // padding: EdgeInsets.only(left: 10,right: 10),
                        // color: ColorStyle.blueSKY,
                        height: 240,
                        child: ListView.builder(
                            padding: EdgeInsets.only(top: 20),
                            shrinkWrap: true,
                            itemCount: controller.images2.length,
                            // itemCount: 1,
                            // scrollDirection: Axis.horizontal,
                            physics: BouncingScrollPhysics(),
                            itemBuilder:
                                (BuildContext context, int index) {
                              return Container(
                                margin: EdgeInsets.only(bottom: 10),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 12,
                                          ),
                                          Container(
                                            child: Image.asset(
                                              controller.images2[index],
                                              // height: 10,
                                            ),
                                            height: 64,
                                            width: 64,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(
                                                  40),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 12,
                                          ),
                                          Text(
                                            // ' Spare change',
                                            controller
                                                .choosePopular3[index],
                                            style: TextStylesPoppins
                                                .textStyles_14
                                                .apply(
                                                color: ColorStyle
                                                    .secondryBlack,
                                                fontWeightDelta: 2),
                                          ),
                                          SizedBox(
                                            width: 12,
                                          ),
                                          Text(
                                            // ' Spare change',
                                            controller
                                                .choosePopular4[index],
                                            style: TextStylesPoppins
                                                .textStyles_14
                                                .apply(
                                                color:
                                                ColorStyle.grey,
                                                fontWeightDelta: 2),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            // ' Spare change',
                                            controller
                                                .choosePopular5[index],
                                            style: TextStylesPoppins
                                                .textStyles_12
                                                .apply(
                                                color: ColorStyle
                                                    .secondryBlack,
                                                fontWeightDelta: 2),
                                          ),
                                          Text(
                                            // ' Spare change',
                                            controller
                                                .choosePopular6[index],
                                            style: TextStylesPoppins
                                                .textStyles_12
                                                .apply(
                                                color: ColorStyle
                                                    .secondryBlack,
                                                fontWeightDelta: 2),
                                          ),
                                        ],
                                      ),
                                      padding: EdgeInsets.only(right: 12),
                                    )
                                    // SizedBox(width: 2,),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    color: ColorStyle.primaryWhite,
                                    borderRadius:
                                    BorderRadius.circular(10)),
                              );
                            }),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'A',
                        style: TextStylesPoppins.textStyles_14.apply(
                            color: ColorStyle.primaryWhite,
                            fontWeightDelta: 2),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        // padding: EdgeInsets.only(left: 10,right: 10),
                        // color: ColorStyle.blueSKY,
                        height: 100,
                        child: ListView.builder(
                            padding: EdgeInsets.only(top: 20),
                            shrinkWrap: true,
                            itemCount: controller.images3.length,
                            // itemCount: 1,
                            // scrollDirection: Axis.horizontal,
                            physics: BouncingScrollPhysics(),
                            itemBuilder:
                                (BuildContext context, int index) {
                              return Container(
                                margin: EdgeInsets.only(bottom: 10),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 12,
                                          ),
                                          Container(
                                            child: Image.asset(
                                              controller.images3[index],
                                              // height: 10,
                                            ),
                                            height: 64,
                                            width: 64,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(
                                                  40),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 12,
                                          ),
                                          Text(
                                            // ' Spare change',
                                            controller
                                                .choosePopular7[index],
                                            style: TextStylesPoppins
                                                .textStyles_14
                                                .apply(
                                                color: ColorStyle
                                                    .secondryBlack,
                                                fontWeightDelta: 2),
                                          ),
                                          SizedBox(
                                            width: 12,
                                          ),
                                          Text(
                                            // ' Spare change',
                                            controller
                                                .choosePopular8[index],
                                            style: TextStylesPoppins
                                                .textStyles_14
                                                .apply(
                                                color:
                                                ColorStyle.grey,
                                                fontWeightDelta: 2),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        // ' Spare change',
                                        controller.choosePopular9[index],
                                        style: TextStylesPoppins.textStyles_12
                                            .apply(
                                            color: ColorStyle
                                                .secondryBlack,
                                            fontWeightDelta: 2),
                                      ),
                                      padding: EdgeInsets.only(right: 12),
                                    )
                                    // SizedBox(width: 2,),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    color: ColorStyle.primaryWhite,
                                    borderRadius:
                                    BorderRadius.circular(10)),
                              );
                            }),
                      ),
                      SizedBox(
                        height: 40,
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
