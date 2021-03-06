import 'package:advanced_capital_pay/Components/AppBarStyle.dart';
import 'package:advanced_capital_pay/Components/BackgroundImage.dart';
import 'package:advanced_capital_pay/Components/ButtonChat.dart';
import 'package:advanced_capital_pay/Components/ButtonCustom.dart';
import 'package:advanced_capital_pay/Components/ComponentsTitleInputs.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'SummaryTransferTop.dart';


class CurrencyExchange extends StatelessWidget {
  const CurrencyExchange({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImageBeneficiary(),
        Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBarStyleCustomBenifi(
              title: Text(
                'Successful Currency Exchange',
                maxLines: 2,
                textAlign: TextAlign.center,
                style: TextStylesPoppins.textStyles_16
                    .apply(color: ColorStyle.primaryWhite, fontWeightDelta: 1),
              ),
              leadingButton: IconButton(
                icon: Image.asset(
                  ImageStyle.back_circle,
                  height: 30,
                ),
                onPressed: () {
                  Get.back();
                },
              ),
              trailingButton: ButtonChat(),
            ),
            body: SingleChildScrollView(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40),
                  Container(
                    padding: EdgeInsets.only(right: 18, left: 18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ComponentsTitleInputs.separtorSpace(),
                        SummaryTransferTop(),
                        ComponentsTitleInputs.separtorSpace(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Pay With',
                              style: TextStylesPoppins.textStyles_8.apply(
                                  color: ColorStyle.grey, fontWeightDelta: 1),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'Bank Account',
                                  style: TextStylesPoppins.textStyles_8.apply(
                                      color: ColorStyle.grey,
                                      fontWeightDelta: 1),
                                ),
                                Text(
                                  'HARRISON SMITH CURRENCT A/C USD',
                                  style: TextStylesPoppins.textStyles_10.apply(
                                      color: ColorStyle.primaryWhite,
                                      fontWeightDelta: 2),
                                ),
                              ],
                            ),
                          ],
                        ),
                        ComponentsTitleInputs.separtorSpace(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Account Details',
                              style: TextStylesPoppins.textStyles_8.apply(
                                  color: ColorStyle.grey, fontWeightDelta: 1),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'Account Type',
                                  style: TextStylesPoppins.textStyles_8.apply(
                                      color: ColorStyle.grey,
                                      fontWeightDelta: 1),
                                ),
                                Text(
                                  'Plus + Current A/C',
                                  style: TextStylesPoppins.textStyles_10.apply(
                                      color: ColorStyle.primaryWhite,
                                      fontWeightDelta: 1),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'Account Number',
                                  style: TextStylesPoppins.textStyles_8.apply(
                                      color: ColorStyle.grey,
                                      fontWeightDelta: 2),
                                ),
                                Text(
                                  '0235859304',
                                  style: TextStylesPoppins.textStyles_10.apply(
                                      color: ColorStyle.primaryWhite,
                                      fontWeightDelta: 2),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        ComponentsTitleInputs.separatorLine(),
                        ComponentsTitleInputs.separtorSpace(),
                        ComponentsTitleInputs.titleDesc(
                          'Conversion Fee',
                          '10.00 USD'
                        ),
                        ComponentsTitleInputs.separtorSpace(),
                        ComponentsTitleInputs.separatorLine(),
                        ComponentsTitleInputs.separtorSpace(),
                        ComponentsTitleInputs.titleDesc(
                            'Exchange Reference',
                            '20200507ACP39483MKS24'
                        ),
                        ComponentsTitleInputs.separtorSpace(),
                        ComponentsTitleInputs.separatorLine(),
                        ComponentsTitleInputs.separtorSpace(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total Recieved',
                              style: TextStylesPoppins.textStyles_12.apply(
                                  color: ColorStyle.primaryWhite, fontWeightDelta: 1),
                            ),
                            Text(
                              '470,080 AED',
                              style: TextStylesPoppins.textStyles_10.apply(
                                  color: ColorStyle.primaryWhite,
                                  fontWeightDelta: 2),
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        ButtonContinueCancel(
                          radiusBorder: 40,

                          textFirst:'Return to Dashboard',
                          colorBGFirst:Colors.transparent,
                          colorBorderFirst:ColorStyle.hex('#016ECF'),
                          textStyleFirst: TextStylesPoppins.textStyles_14.apply(
                            fontWeightDelta: 1,
                            color: ColorStyle.hex('#016ECF'),
                          ),
                          onTapFirst: () {

                          },
                          textSecond:'Share',
                          colorBGSecond: ColorStyle.hex('#016ECF'),
                          colorBorderSecond: Colors.transparent,
                          textStyleSecond: TextStylesPoppins.textStyles_14.apply(
                              fontWeightDelta: 1,
                              color: ColorStyle.primaryWhite
                          ),
                          onTapSecond: () {

                          },
                        ),
                        SizedBox(height: 50),
                      ],
                    ),
                    decoration: EffectStyle.decorationTransferSummary()
                  ),
                ],
              ),
            ))
      ],
    );
  }
}
