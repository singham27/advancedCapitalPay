import 'package:advanced_capital_pay/Components/CountryPicker.dart';
import 'package:flutter/material.dart';

import '../Styles/ColorStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';

class NewBeneficiarySummary extends StatelessWidget {
  const NewBeneficiarySummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(

      // width: 373,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          Row(
            children: [
              // Image.asset(ImageStyle.icon_material_error),
              SizedBox(width: 10,),
              Column(
                children: [
                  Icon(Icons.error,size: 40,color: ColorStyle.blueSKY,),
                  SizedBox(height: 90,),
                ],
              ),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    'Protect against Fraud, Don’t fall victim ',


                    style: TextStyles.textStyles_14.apply(
                        color: ColorStyle.secondryBlack,
                        fontWeightDelta: 2
                    ),
                  ),
                  Text(

                    'Criminalswill pretend to be people in, ',

                    style: TextStyles.textStyles_14.apply(
                        color: ColorStyle.secondryBlack,
                        fontWeightDelta: 2
                    ),
                  ),
                  Text(

                    'will pretend to be people in which you',

                    style: TextStyles.textStyles_14.apply(
                        color: ColorStyle.secondryBlack,
                        fontWeightDelta: 2
                    ),
                  ),
                  Text(

                    'trust companies, government and legal',

                    style: TextStyles.textStyles_14.apply(
                        color: ColorStyle.secondryBlack,
                        fontWeightDelta: 2
                    ),
                  ),
                  Text(

                    'figures',

                    style: TextStyles.textStyles_14.apply(
                        color: ColorStyle.secondryBlack,
                        fontWeightDelta: 2
                    ),
                  ),
                  Text(

                    'see more ',

                    style: TextStyles.textStyles_14.apply(
                        color: ColorStyle.blueSKY,
                        fontWeightDelta: 2
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: 40,),
          Container(padding: EdgeInsets.only(left: 62,right: 20),child:   Text(
            'AdvanceCapitalPay will never ask'
                ' you to transfer any funds, criminals '
                'will pressure you. For more information '
                'visit our Fraud and Security Centre',


            style: TextStyles.textStyles_14.apply(
                color: ColorStyle.secondryBlack,
                fontWeightDelta: 2
            ),
          ),),
          SizedBox(height: 20,),









        ],
      ),
      decoration: BoxDecoration(
          color: ColorStyle.primaryWhite,
          borderRadius: BorderRadius.circular(16)
      ),
    );
  }
}
class NewBeneficiarySummarys extends StatelessWidget {
  const NewBeneficiarySummarys({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20,),
        Row(
          children: [
            // Image.asset(ImageStyle.icon_material_error),
            Column(
              children: [
                Icon(Icons.error,size: 40,color: ColorStyle.blueSKY,),
                SizedBox(height: 140,),
              ],
            ),
            SizedBox(width: 30,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  'We aim to provide a response within ',



                  style: TextStyles.textStyles_12.apply(
                      color: ColorStyle.secondryBlack,
                      fontWeightDelta: 2
                  ),
                ),
                Text(

                  '24 hours if your matter is urgent ',



                  style: TextStyles.textStyles_12.apply(
                      color: ColorStyle.secondryBlack,
                      fontWeightDelta: 2
                  ),
                ),
                Text(

                  'please send us a message via the ',



                  style: TextStyles.textStyles_12.apply(
                      color: ColorStyle.secondryBlack,
                      fontWeightDelta: 2
                  ),
                ),
                Text(

                  'Live Support Chat. You can provide ',



                  style: TextStyles.textStyles_12.apply(
                      color: ColorStyle.secondryBlack,
                      fontWeightDelta: 2
                  ),
                ),
                Text(

                  'as much detail as possible including ',



                  style: TextStyles.textStyles_12.apply(
                      color: ColorStyle.secondryBlack,
                      fontWeightDelta: 2
                  ),
                ),
                Text(

                  'any screenshots or attachments which ',


                  style: TextStyles.textStyles_12.apply(
                      color: ColorStyle.secondryBlack,
                      fontWeightDelta: 2
                  ),
                ),
                Text(

                  'you may have. Information provided ',



                  style: TextStyles.textStyles_12.apply(
                      color: ColorStyle.secondryBlack,
                      fontWeightDelta: 2
                  ),
                ),
                Text(

                  'within the messages center is directly ',


                  style: TextStyles.textStyles_12.apply(
                      color: ColorStyle.secondryBlack,
                      fontWeightDelta: 2
                  ),
                ),
                Text(

                  'sent to our Customer Support ',



                  style: TextStyles.textStyles_12.apply(
                      color: ColorStyle.secondryBlack,
                      fontWeightDelta: 2
                  ),
                ),
                Text(


                  'Representatives.',


                  style: TextStyles.textStyles_12.apply(
                      color: ColorStyle.secondryBlack,
                      fontWeightDelta: 2
                  ),
                ),
              ],
            )
          ],
        ),
        SizedBox(height: 40,),










      ],
    );
  }
}



