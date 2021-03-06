import 'package:advanced_capital_pay/Components/CountryPicker.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:flutter/material.dart';


class NewTransferCustom extends StatefulWidget {
  final EdgeInsets padding;

  const NewTransferCustom({Key? key,
    this.padding = EdgeInsets.zero
  }) : super(key: key);

  @override
  _NewTransferCustomState createState() => _NewTransferCustomState();
}

class _NewTransferCustomState extends State<NewTransferCustom> {
  bool isShowFeeStructure = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.padding,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  child: CountryPickerCountryCode(
                    radius: 8,
                    height: 60,
                    fontSizeFlagEmoji: 44,
                    countryCode: 'UK',
                    colorBG: ColorStyle.darkestBlue,
                    colorBorder: Colors.transparent,
                    padding: EdgeInsets.only(left: 16, right: 16, top: 0, bottom: 0),
                    colorIcon: Colors.grey,
                    icon: Icon(
                      Icons.keyboard_arrow_down,
                      size: 36,
                      color: Colors.white,
                    ),
                    textStyle: TextStylesPoppins.textStyles_18.apply(
                      color: ColorStyle.primaryWhite,
                      // fontWeightDelta: 1
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 60,
                  padding: EffectStyle.padding(0, 16, 0, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: AssetImage(ImageStyle.Rectangle1958),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'You convert United States Dollar ',
                        textAlign: TextAlign.end,
                        style: TextStylesPoppins.textStyles_9.apply(
                          color: ColorStyle.primaryWhite,
                          // fontWeightDelta: 2
                        ),
                      ),
                      SizedBox(height: 4,),
                      Text(
                        '128,678',
                        style: TextStylesPoppins.textStyles_12.apply(
                            color: ColorStyle.primaryWhite, fontWeightDelta: 2),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(child: Column(
                children: [
                  Text(
                    'Show fee structure',
                    style: TextStylesPoppins.textStyles_10.apply(
                        color: ColorStyle.hex('#0088FF'),
                        fontWeightDelta: 1
                    ),
                  ),
                  Container(
                    width: 105,
                    height: 1,
                    color: ColorStyle.blueSKY,
                  ),
                ],
              ),onTap: (){
                isShowFeeStructure = !isShowFeeStructure;
                setState(() {

                });
              },),
              SizedBox(width: 10,),
              Image.asset(ImageStyle.Group2222,height: 16,),
            ],
          ),
          if (isShowFeeStructure)
          SizedBox(height: 16,),
          if (isShowFeeStructure)
          Container(
            padding: EffectStyle.padding(16, 16, 16, 16),
            decoration: BoxDecoration(
                borderRadius: EffectStyle.radiusCustom(10),
                color: ColorStyle.hex('#16429D').withOpacity(0.6)
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Balance After',
                      style: TextStylesPoppins.textStyles_14.apply(
                          color: ColorStyle.primaryWhite,
                          fontWeightDelta: 1
                      ),
                    ),
                    Text(
                      '79.46 USD',
                      style: TextStylesPoppins.textStyles_14.apply(
                          color: ColorStyle.primaryWhite,
                          fontWeightDelta: 0
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Transaction Fee',
                      style: TextStylesPoppins.textStyles_14.apply(
                          color: ColorStyle.primaryWhite,
                          fontWeightDelta: 1
                      ),
                    ),
                    Text(
                      '10.00 USD',
                      style: TextStylesPoppins.textStyles_14.apply(
                          color: ColorStyle.primaryWhite,
                          fontWeightDelta: 0
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Fees',
                      style: TextStylesPoppins.textStyles_14.apply(
                          color: ColorStyle.primaryWhite,
                          fontWeightDelta: 1
                      ),
                    ),
                    Text(
                      '10.00 USD',
                      style: TextStylesPoppins.textStyles_14.apply(
                          color: ColorStyle.primaryWhite,
                          fontWeightDelta: 0
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Container(height: 1, color: ColorStyle.primaryWhite,),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Conversation Amount',
                      style: TextStylesPoppins.textStyles_14.apply(
                          color: ColorStyle.primaryWhite,
                          fontWeightDelta: 1
                      ),
                    ),
                    Text(
                      '1.920 USD',
                      style: TextStylesPoppins.textStyles_14.apply(
                          color: ColorStyle.primaryWhite,
                          fontWeightDelta: 0
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Guaranteed Rate',
                      style: TextStylesPoppins.textStyles_14.apply(
                          color: ColorStyle.primaryWhite,
                          fontWeightDelta: 1
                      ),
                    ),
                    Text(
                      '3.675.00 USD',
                      style: TextStylesPoppins.textStyles_14.apply(
                          color: ColorStyle.primaryWhite,
                          fontWeightDelta: 0
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 16,),
          Row(
            children: [
              Expanded(
                child: Container(
                  child: CountryPickerCountryCode(
                    radius: 8,
                    height: 60,
                    fontSizeFlagEmoji: 44,
                    countryCode: 'UK',
                    colorBG: ColorStyle.darkestBlue,
                    colorBorder: Colors.transparent,
                    padding: EdgeInsets.only(left: 16, right: 16, top: 0, bottom: 0),
                    colorIcon: Colors.grey,
                    icon: Icon(
                      Icons.keyboard_arrow_down,
                      size: 36,
                      color: Colors.white,
                    ),
                    textStyle: TextStylesPoppins.textStyles_18.apply(
                      color: ColorStyle.primaryWhite,
                      // fontWeightDelta: 1
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 60,
                  padding: EffectStyle.padding(0, 16, 0, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: AssetImage(ImageStyle.Rectangle1958),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'You receive United Arab Emirates Dhiram',
                        textAlign: TextAlign.end,
                        style: TextStylesPoppins.textStyles_9.apply(
                          color: ColorStyle.primaryWhite,
                          // fontWeightDelta: 2
                        ),
                      ),
                      SizedBox(height: 4,),
                      Text(
                        '128,678',
                        style: TextStylesPoppins.textStyles_12.apply(
                            color: ColorStyle.primaryWhite, fontWeightDelta: 2),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


