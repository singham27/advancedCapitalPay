import 'package:advanced_capital_pay/Components/ButtonCustom.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Styles/TextStyles.dart';
import '../../../Components/TextFieldCustom.dart';
import '../../../Controllers/AccountDetailsRecoveryController.dart';


class AccountDetails extends StatelessWidget {
  AccountDetails({Key? key}) : super(key: key);

  final controller = Get.put(AccountDetailsRecoveryController());

  textFieldsAccount(String title, [bool isRequired = false]) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 18,),
        Row(
          children: [
            Text(
              title,
              style: TextStyles.textStyles_16.apply(
                color: ColorStyle.secondryBlack,
                fontWeightDelta: 1,
              ),
            ),
            if (isRequired)
            Text(
              '*',
              style: TextStyles.textStyles_16.apply(
                color: Colors.red,
                fontWeightDelta: 11,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 6,
        ),
        TextFieldCustom(
          colorBoder: ColorStyle.secondryBlack,
          hintText: '',
          textStyle: TextStyles.textStyles_14,
          radiusBorder: 30,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EffectStyle.padding(30, 30, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 16,
          ),
          Text(
            'Account Details',
            style: TextStyles.textStyles_20.apply(
              color: ColorStyle.primaryWhite,
              fontWeightDelta: 1,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            padding: EffectStyle.padding(16, 16, 30, 16),
            decoration: BoxDecoration(
              color: ColorStyle.primaryWhite,
              borderRadius: EffectStyle.radiusCustom(10),
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(ImageStyle.icon_material_error, width: 30,),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Text(
                        'Please make sure you enter the correct details associated with your account to proceed. If you are still having trouble completing this step click the chat icon in the top left of the page to speak with one of our customer service representatives.',
                        style: TextStyles.textStyles_12.apply(
                          color: ColorStyle.darkestBlue,
                          fontWeightDelta: 1,
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                  ],
                ),
                textFieldsAccount('Accounts Type', true),
                textFieldsAccount('First Name', true),
                textFieldsAccount('Middle Name'),
                textFieldsAccount('Last Names', true),
                textFieldsAccount('Passport Number', true),
                SizedBox(height: 16,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(ImageStyle.icon_material_error, width: 30,),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Text(
                        'Please make sure you enter your Account number, Virtual/Physical Card Number or both in order to receive the authentication code via SMS to your registered mobile.',
                        style: TextStyles.textStyles_12.apply(
                          color: ColorStyle.darkestBlue,
                          fontWeightDelta: 1,
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                  ],
                ),
                textFieldsAccount('Accounts Number', true),
                textFieldsAccount('Virtual/Physical Card Number', true),
                SizedBox(height: 36,),
                Row(
                  children: [
                    Expanded(child: ElevatedButtonCustom(
                      colorBG: ColorStyle.primaryWhite,
                      textStyle: TextStyles.textStyles_16
                          .apply(color: ColorStyle.blueSKY, fontWeightDelta: 1),
                      colorBorder: ColorStyle.blueSKY,
                      text: 'Cancel',
                      radiusBorder: 30,
                      onTap: () {

                      },
                    )),
                    SizedBox(width: 10,),
                    Expanded(child: ElevatedButtonCustom(
                      colorBG: ColorStyle.blueSKY,
                      textStyle: TextStyles.textStyles_16
                          .apply(color: ColorStyle.primaryWhite, fontWeightDelta: 1),

                      text: 'Continue',
                      radiusBorder: 30,
                      onTap: () {
                        controller.arrSelectOptionIcons[1] = true;

                        for (int i = 0; i<controller.arrSelectOption.length; i++) {
                          if (i == 1) {
                            controller.arrSelectOption[1] = true;
                          } else {
                            controller.arrSelectOption[i] = false;
                          }
                        }
                      },
                    )),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}