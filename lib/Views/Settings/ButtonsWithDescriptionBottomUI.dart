import 'package:flutter/material.dart';

import 'package:advanced_capital_pay/Components/ButtonCustom.dart';
import 'package:flutter/cupertino.dart';
import '../../Styles/ColorStyle.dart';
import '../../Styles/EffectStyle.dart';
import '../../Styles/TextStyles.dart';

class ButtonsWithDescriptionBottomUI extends StatelessWidget {
  final String? description;
  const ButtonsWithDescriptionBottomUI({Key? key,
    this.description = 'Description ...',
    this.textFirst = 'First',
    this.textSecond = 'Second',
    this.onTapFirst,
    this.onTapSecond,
  }) : super(key: key);
  final String? textFirst;

  final String? textSecond;
  final Function()? onTapFirst;

  final Function()? onTapSecond;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          description!,
          style: TextStyles
              .textStyles_14
              .apply(
            color: ColorStyle
                .secondryBlack,
            fontWeightDelta: 0,
          ),
        ),
        SizedBox(height: 30,),
        Row(
          children: [
            Expanded(
              child: ElevatedButtonCustom(
                  text: textFirst,
                  textStyle: TextStyles.textStyles_16
                      .apply(color: ColorStyle.darkestBlueSignUp, fontWeightDelta: 1),
                  colorBG: ColorStyle.primaryWhite,
                  colorBorder: ColorStyle.darkestBlueSignUp,
                  radiusBorder: 40,
                  onTap: onTapFirst
              ),
            ),
            SizedBox(
              width: 6,
            ),
            Expanded(
              child: ElevatedButtonCustom(
                  text: textSecond,
                  textStyle: TextStyles.textStyles_16
                      .apply(color: ColorStyle.primaryWhite, fontWeightDelta: 1),
                  colorBG: ColorStyle.darkestBlueSignUp,
                  radiusBorder: 40,
                  onTap: onTapSecond
              ),
            ),
          ],
        ),
      ],
    );
  }
}