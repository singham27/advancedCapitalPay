import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:flutter/material.dart';
import 'ButtonCustom.dart';


class ComponentsSignUp {
  static topProgress([String progress='-1']) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Your progress ',
              style: TextStylesPoppins.textStyles_14.apply(
                color: ColorStyle.secondryBlack,
                fontWeightDelta: 1,
              ),
            ),
            Text(
              progress+'%',
              style: TextStylesPoppins.textStyles_14.apply(
                color: ColorStyle.darkestBlueSignUp,
                fontWeightDelta: 1,
              ),
            ),
            Text(
              ' complete',
              style: TextStylesPoppins.textStyles_14.apply(
                color: ColorStyle.secondryBlack,
                fontWeightDelta: 1,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 6,
        ),
        LinearProgressIndicator(
          backgroundColor: ColorStyle.grey,
          valueColor: AlwaysStoppedAnimation<Color>(ColorStyle.darkestBlueSignUp),
          value: int.parse(progress)/10,
        ),
      ],
    );
  }

  static bottomUI() {
    return Column(
      children: [
        SizedBox(
          height: 16,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: 'Please follow the instructions provided throughout the application to apply to on-board as an AdvanceCapitalClient. If you have previously started an application.',
                      style: TextStylesPoppins.textStyles_14.apply(
                        color: ColorStyle.secondryBlack,
                        // fontWeightDelta: 1,
                      ),
                    ),
                    TextSpan(
                      text: ' Click Here.',
                      style: TextStylesPoppins.textStyles_14.apply(
                        color: ColorStyle.blueSKY,
                        fontWeightDelta: 2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: ColorStyle.hex('#358FFA'),
                    borderRadius: EffectStyle.radiusCustom(30)),
                child: Icon(
                  Icons.help_outline_rounded,
                  size: 30,
                )),
          ],
        ),
      ],
    );
  }

  static check() {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: ColorStyle.ligthBlue,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Icon(
        Icons.check,
        size: 14,
        color: ColorStyle.primaryWhite,
      ),
    );
  }

  static backContinue(String titleBack, Function() backButton, String titleContinue, Function() continueButton) {
    return Column(
      children: [
        SizedBox(
          height: 12,
        ),
        Row(
          children: [
            Expanded(
              child: ElevatedButtonCustom(
                text: titleBack,
                colorBG: ColorStyle.darkestBlueSignUp,
                radiusBorder: 0,
                colorBorder: ColorStyle.grey,
                textStyle: TextStylesPoppins.textStyles_16.apply(
                    color: ColorStyle.primaryWhite,
                    fontWeightDelta: 1),
                onTap: backButton,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: ElevatedButtonCustom(
                text: titleContinue,
                colorBG: ColorStyle.darkestBlueSignUp,
                radiusBorder: 0,
                colorBorder: ColorStyle.grey,
                textStyle: TextStylesPoppins.textStyles_16.apply(
                    color: ColorStyle.primaryWhite,
                    fontWeightDelta: 1),
                onTap: continueButton
              ),
            ),
          ],
        ),
        SizedBox(
          height: 12,
        ),
      ],
    );
  }

  static title(String title, [bool isStar = false]) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: title,
            style: TextStylesPoppins.textStyles_14.apply(
              color: ColorStyle.secondryBlack,
              fontWeightDelta: 1,
            ),
          ),
          if (isStar)
            TextSpan(
              text: '*',
              style: TextStylesPoppins.textStyles_14.apply(
                color: Colors.red,
                fontWeightDelta: 1,
              ),
            ),
        ],
      ),
    );

  }
}

class ComponentsSignUpCustom {
  static topProgress(int progress) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '75 %',
              style: TextStylesPoppins.textStyles_14.apply(
                  color: ColorStyle.secondryBlack,
                  fontWeightDelta: 2
              ),
            ),
            Text(
              '10,916.00',
              style: TextStylesPoppins.textStyles_14.apply(
                  color: ColorStyle.secondryBlack,
                  fontWeightDelta: 2
              ),
            ),
          ],
        ),
        SizedBox(
          height: 6,
        ),
        LinearProgressIndicator(
          backgroundColor: ColorStyle.grey,
          // minHeight: 8,
          valueColor: AlwaysStoppedAnimation<Color>(ColorStyle.darkestBlueSignUp),
          value: progress/6,

        ),

      ],
    );
  }

  static bottomUI() {
    return Column(
      children: [
        SizedBox(
          height: 16,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: 'Please follow the instructions provided throughout the application to apply to on-board as an AdvanceCapitalClient. If you have previously started an application.',
                      style: TextStylesPoppins.textStyles_14.apply(
                        color: ColorStyle.secondryBlack,
                        fontWeightDelta: 1,
                      ),
                    ),
                    TextSpan(
                      text: ' Click Here.',
                      style: TextStylesPoppins.textStyles_14.apply(
                        color: ColorStyle.blueSKY,
                        fontWeightDelta: 2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: ColorStyle.hex('#358FFA'),
                    borderRadius: EffectStyle.radiusCustom(30)),
                child: Icon(
                  Icons.help_outline_rounded,
                  size: 30,
                )),
          ],
        ),
      ],
    );
  }

  static check() {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: ColorStyle.ligthBlue,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Icon(
        Icons.check,
        size: 14,
        color: ColorStyle.primaryWhite,
      ),
    );
  }

  static backContinue(String titleBack, Function() backButton, String titleContinue, Function() continueButton) {
    return Column(
      children: [
        SizedBox(
          height: 12,
        ),
        Row(
          children: [
            Expanded(
              child: ElevatedButtonCustom(
                text: titleBack,
                colorBG: ColorStyle.darkestBlueSignUp,
                radiusBorder: 0,
                colorBorder: ColorStyle.grey,
                textStyle: TextStylesPoppins.textStyles_16.apply(
                    color: ColorStyle.primaryWhite,
                    fontWeightDelta: 1),
                onTap: backButton,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: ElevatedButtonCustom(
                  text: titleContinue,
                  colorBG: ColorStyle.darkestBlueSignUp,
                  radiusBorder: 0,
                  colorBorder: ColorStyle.grey,
                  textStyle: TextStylesPoppins.textStyles_16.apply(
                      color: ColorStyle.primaryWhite,
                      fontWeightDelta: 1),
                  onTap: continueButton
              ),
            ),
          ],
        ),
        SizedBox(
          height: 12,
        ),
      ],
    );
  }

  static title(String text) {
    return Text(
      text,
      style: TextStylesPoppins.textStyles_20.apply(
        color: ColorStyle.secondryBlack,
        fontWeightDelta: 1,
      ),
    );
  }
}
