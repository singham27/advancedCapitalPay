import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:advanced_capital_pay/Views/PersonalApplication2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Components/AppBarStyle.dart';
import '../Components/ButtonCustom.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/EffectStyle.dart';
import '../Components/DropdownButtonCustom.dart';

class PersonalApplication1 extends StatelessWidget {
  const PersonalApplication1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          ImageStyle.bg_1,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.cover,
        ),
        Scaffold(
            appBar: AppBarStyleStatusBar(),
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              padding: EffectStyle.padding(16, 16, 0, 0),
              child: Column(
                children: [
                  Image.asset(
                    ImageStyle.application,
                    width: MediaQuery.of(context).size.width,
                    // fit: BoxFit.fill,
                    // height: heightAppBar,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Text(
                        'Your progress',
                        style: TextStyles.textStyles_14.apply(
                          color: ColorStyle.secondryBlack,
                          fontWeightDelta: 1,
                        ),
                      ),
                      Text(
                        ' 0%',
                        style: TextStyles.textStyles_14.apply(
                          color: ColorStyle.blueLight,
                          fontWeightDelta: 1,
                        ),
                      ),
                      Text(
                        ' complete',
                        style: TextStyles.textStyles_14.apply(
                          color: ColorStyle.secondryBlack,
                          fontWeightDelta: 1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 4,
                      width: 14,
                      decoration: BoxDecoration(color: ColorStyle.blueLight),
                    ),
                    height: 4,
                    decoration: BoxDecoration(color: Colors.black12),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    // padding: EdgeInsets.only(left: 20, right: 20),
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          child: Text(
                            'ACFVC8JTJ',
                            style: TextStyles.textStyles_14.apply(
                              color: ColorStyle.primaryWhite,
                              fontWeightDelta: 1,
                            ),
                          ),
                          alignment: Alignment.center,
                          width: 102,
                          height: 43,
                          decoration:
                              BoxDecoration(color: ColorStyle.blueSKY),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          padding: EffectStyle.padding(16, 16, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Welcome to Advance Capital'
                                    'On-boarding Application Form',
                                style: TextStyles.textStyles_16.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                'Please complete the sections below '
                                    'for the client profile Information, '
                                    'we can only accept answers provided '
                                    'in English. If you required any '
                                    'assistance throughout the application '
                                    'process simply click the Live Help Button '
                                    'where one of our Customer Support Representatives '
                                    'will be happy to assist you with any queries',
                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 28,
                              ),
                              Text(
                                'Your Name',
                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              DropdownButtonCustom(
                                colorBorder: Colors.grey,
                                onChanged: (text) {},
                                listValue: ['Mr.', 'Miss', 'Mrs'],
                                selectedValue: "Mr.",
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              TextField(
                                // obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'First Name',
                                  labelStyle: TextStyles.textStyles_14.apply(
                                    color: Colors.grey,
                                    fontWeightDelta: 1,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              TextField(
                                // obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Middle Name',
                                  labelStyle: TextStyles.textStyles_14.apply(
                                    color: Colors.grey,
                                    fontWeightDelta: 1,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              TextField(
                                // obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Last Name',
                                  labelStyle: TextStyles.textStyles_14.apply(
                                    color: Colors.grey,
                                    fontWeightDelta: 1,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                'Country of Birth',
                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              DropdownButtonCustom(
                                colorBorder: Colors.grey,
                                onChanged: (text) {},
                                listValue: [
                                  'Country of Birth',
                                  'India',
                                  'Amarica',
                                  'Dubey'
                                ],
                                selectedValue: "Country of Birth",
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
            'Place of Birth',
            style: TextStyles.textStyles_14.apply(
            color: ColorStyle.secondryBlack,
              fontWeightDelta: 1,
            ),
        ),
                              SizedBox(
                                height: 12,
                              ),
                              DropdownButtonCustom(
                                colorBorder: Colors.grey,
                                onChanged: (text) {},
                                listValue: [
                                  'Place of Birth',
                                  'Jhunjhunun',
                                  'Jaipure',
                                  'Delhi'
                                ],
                                selectedValue: "Place of Birth",
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                'CitizenShip',
                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              DropdownButtonCustom(
                                colorBorder: Colors.grey,
                                onChanged: (text) {},
                                listValue: [
                                  'CitizenShip',
                                  'Jhunjhunun',
                                  'Jaipure',
                                  'Delhi'
                                ],
                                selectedValue: "CitizenShip",
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                'Date Of Birth',
                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              DropdownButtonCustom(
                                colorBorder: Colors.grey,
                                onChanged: (text) {},
                                listValue: [
                                  'Date',
                                  '01', '02', '03' ,'04', '05', '06' ,'07', '08', '09' ,'10', '11', '12', '13', '14', '15',
                                      '16', '17', '18', '19', '20', '21', '22', '23', '24' ,'25', '26', '27', '28', '29', '30' ,'31',



                                ],
                                selectedValue: "Date",
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              DropdownButtonCustom(
                                colorBorder: Colors.grey,
                                onChanged: (text) {},
                                listValue: [
                                  'Month',
                                  'January', 'Fabruary', 'March' ,'April', 'May', 'June' ,'July', 'August', 'September' ,'October', 'November', 'December',




                                ],
                                selectedValue: "Month",
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              DropdownButtonCustom(
                                colorBorder: Colors.grey,
                                onChanged: (text) {},
                                listValue: [
                                  'Year',
                                  '1991', '1992', '1993' ,'1994', '1995', '1996' ,'1997', '1998', '1999' ,'2000', '2001', '2002', '2003', '2004', '2005',
                                  '2006', '2007', '2008', '2009', '2010', '2011', '2012', '2013', '2014' ,'2015', '2016', '2017', '2018', '2019', '2020' ,'2021',
                                  '2022', '2023'



                                ],
                                selectedValue: "Year",
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                'Current Occupation',
                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              DropdownButtonCustom(
                                colorBorder: Colors.grey,
                                onChanged: (text) {},
                                listValue: [
                                  'Current Occupation',
                                  'Jhunjhunun',
                                  'Jaipure',
                                  'Delhi'
                                ],
                                selectedValue: "Current Occupation",
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                'Passport Number',
                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              DropdownButtonCustom(
                                colorBorder: Colors.grey,
                                onChanged: (text) {},
                                listValue: [
                                  'Please enter passport number',
                                  '202',
                                  '203',
                                  '204',
                                ],
                                selectedValue: "Please enter passport number",
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                'Telephone nomber',
                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              DropdownButtonCustom(
                                colorBorder: Colors.grey,
                                onChanged: (text) {},
                                listValue: [
                                  '+91',
                                  '+19',
                                  '+20',

                                ],
                                selectedValue: "+91",
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Row(
                                children: [
                                  Expanded(child: TextField(
                                    // obscureText: true,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'please enter your personal email',
                                      labelStyle: TextStyles.textStyles_14.apply(
                                        color: Colors.grey,
                                        fontWeightDelta: 1,
                                      ),
                                    ),
                                  ),),
                                  SizedBox(
                                    width: 12,
                                  ),
                                 Container(
                                   height: 25,
                                   width: 25,
                                   child:  Icon(
                                       Icons.question_mark,
                                       size: 18,
                                       color: Colors.grey
                                   ),
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(20),
                                     border: Border.all(
                                       width: 1,
                                       color: Colors.grey
                                     )
                                   ),
                                 )

                                ],
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                children: [

                                  Icon(
                                      Icons.add,
                                      // size: 18,
                                      color: ColorStyle.blueSKY
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Text(
                                    'Add an additional telephone number',
                                    style: TextStyles.textStyles_12.apply(
                                      color: ColorStyle.blueSKY,
                                      fontWeightDelta: 1,
                                    ),
                                  ),


                                ],
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                'Private E-mail address',
                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                children: [
                                  Expanded(child: TextField(
                                    // obscureText: true,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'please enter your personal email',
                                      labelStyle: TextStyles.textStyles_14.apply(
                                        color: Colors.grey,
                                        fontWeightDelta: 1,
                                      ),
                                    ),
                                  ),),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Container(
                                    height: 25,
                                    width: 25,
                                    child:  Icon(
                                        Icons.question_mark,
                                        size: 18,
                                        color: Colors.grey
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            width: 1,
                                            color: Colors.grey
                                        )
                                    ),
                                  )

                                ],
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                children: [

                                  Icon(
                                      Icons.add,
                                      // size: 18,
                                      color: ColorStyle.blueSKY
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Text(
                                    'Add an additional E-mail address',
                                    style: TextStyles.textStyles_12.apply(
                                      color: ColorStyle.blueSKY,
                                      fontWeightDelta: 1,
                                    ),
                                  ),


                                ],
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                'How did you hear about us ?',
                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              DropdownButtonCustom(
                                colorBorder: Colors.grey,
                                onChanged: (text) {},
                                listValue: [
                                  'Referral',


                                ],
                                selectedValue: "Referral",
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              TextField(
                                // obscureText: true,
                                decoration: InputDecoration(

                                  border: OutlineInputBorder(
                                      borderSide: new BorderSide(color: Colors.black12)
                                  ),
                                  labelText: 'Please specify your anwer',
                                  labelStyle: TextStyles.textStyles_14.apply(
                                    color: Colors.grey,
                                    fontWeightDelta: 1,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: ElevatedButtonCustom(
                                      text: 'Back to site',
                                      colorBG: ColorStyle.blueSKY,
                                      textStyle: TextStyles.textStyles_16
                                          .apply(color: ColorStyle.primaryWhite, fontWeightDelta: 1),
                                      onTap: () {

                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(child: ElevatedButtonCustom(
                                    text: 'Continue',
                                    colorBG: ColorStyle.blueSKY,
                                    textStyle: TextStyles.textStyles_16
                                        .apply(color: ColorStyle.primaryWhite, fontWeightDelta: 1),
                                    onTap: () {
                                             Get.to(PersonalApplication2());
                                    },
                                  ),),
                                ],
                              ),
                              SizedBox(
                                height: 12,
                              ),

                            ],

                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        border:
                            Border.all(width: 2, color: ColorStyle.blueSKY)),
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
