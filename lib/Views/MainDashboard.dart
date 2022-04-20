
import 'package:flutter/material.dart';

import '../Components/AppBarStyle.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/EffectStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';

class MainDashboard extends StatelessWidget {
  const MainDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Image.asset(ImageStyle.tiard, width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height,fit: BoxFit.cover,),
        Scaffold(
            appBar: AppBarStyle1(),
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              // padding: EffectStyle.padding(16, 16, 0, 0),
              child: Column(
                children: [
                  Container(
                    padding: EffectStyle.padding(16, 16, 0, 0),
                    child:Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width:double.infinity,
                          height: 150,
                          color: ColorStyle.primaryWhite,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width:91,
                              height: 50,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    'Funds',
                                    style: TextStyles.textStyles_12.apply(
                                      color: ColorStyle.primaryWhite,
                                      fontWeightDelta: 1,
                                    ),
                                  ),
                                  Text(
                                    '\$2,713.23',
                                    style: TextStyles.textStyles_12.apply(
                                      color: ColorStyle.primaryWhite,
                                      fontWeightDelta: 1,
                                    ),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                color: ColorStyle.blueSKY,
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 5,right: 5),
                              width:122,
                              height: 30,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                      ImageStyle.ethereum,
                                      // width: MediaQuery.of(context).size.width,
                                      height:20
                                    // fit: BoxFit.cover,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    width:30,
                                    height: 30,
                                    child:  Text(
                                      '\$',
                                      style: TextStyles.textStyles_20.apply(
                                        color: ColorStyle.secondryBlack,
                                        fontWeightDelta: 1,
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorStyle.primaryWhite,
                                      borderRadius: BorderRadius.circular(300),
                                    ),
                                  ),
                                  Icon(
                                    Icons.currency_bitcoin,
                                    size: 20,
                                    color: ColorStyle.primaryWhite,
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: ColorStyle.primaryWhite
                                ),
                                // color: ColorStyle.blueSKY,
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            Container(
                              width:91,
                              height: 50,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    'Balance',
                                    style: TextStyles.textStyles_12.apply(
                                      color: ColorStyle.primaryWhite,
                                      fontWeightDelta: 1,
                                    ),
                                  ),
                                  Text(
                                    '\$2,713.23',
                                    style: TextStyles.textStyles_12.apply(
                                      color: ColorStyle.primaryWhite,
                                      fontWeightDelta: 1,
                                    ),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                color: ColorStyle.blueSKY,
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width:91,
                              height: 66,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                      ImageStyle.transfer3,
                                      color: ColorStyle.blueSKY,
                                      // width: MediaQuery.of(context).size.width,
                                      height:25
                                    // fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Transfer',
                                    style: TextStyles.textStyles_8.apply(
                                      color: ColorStyle.blueSKY,
                                      fontWeightDelta: 1,
                                    ),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                color: ColorStyle.primaryWhite,
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            Container(
                              width:91,
                              height: 66,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                      ImageStyle.transfer3,
                                      color: ColorStyle.blueSKY,
                                      // width: MediaQuery.of(context).size.width,
                                      height:25
                                    // fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Account Details',
                                    style: TextStyles.textStyles_8.apply(
                                      color: ColorStyle.blueSKY,
                                      fontWeightDelta: 1,
                                    ),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                color: ColorStyle.primaryWhite,
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            Container(
                              width:91,
                              height: 66,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                      ImageStyle.stock,
                                      color: ColorStyle.blueSKY,
                                      // width: MediaQuery.of(context).size.width,
                                      height:25
                                    // fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Exchange',
                                    style: TextStyles.textStyles_8.apply(
                                      color: ColorStyle.blueSKY,
                                      fontWeightDelta: 1,
                                    ),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                color: ColorStyle.primaryWhite,
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10,right: 10),
                   color: ColorStyle.primaryWhite,
                    child:Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Transactions',
                              style: TextStyles.textStyles_12.apply(
                                color: ColorStyle.blueSKY,
                                fontWeightDelta: 1,
                              ),
                            ),
                            Text(
                              'Statements',
                              style: TextStyles.textStyles_12.apply(
                                color: ColorStyle.blueSKY,
                                fontWeightDelta: 1,
                              ),
                            ),
                            Text(
                              'Notices',
                              style: TextStyles.textStyles_12.apply(
                                color: ColorStyle.blueSKY,
                                fontWeightDelta: 1,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width:double.infinity,
                          height: 1,
                          color: Colors.black26,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width:double.infinity,
                          height: 31,
                          child: Row(
                            children: [
                              Icon(
                                Icons.search,color: ColorStyle.grayColor,
                              ),
                              Expanded(
                                  child:TextField(
                                    onChanged: (value) {
                                    },
                                    decoration: InputDecoration(
                                      hintText: "Search",
                                      hintStyle: TextStyle(
                                        color: ColorStyle.grayColor,
                                      ),
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,

                                    ),)

                              )],
                          ),
                          decoration: BoxDecoration(
                              color: Colors.black26,
                              borderRadius: BorderRadius.circular(8)
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width:double.infinity,
                          height: 1,
                          color: Colors.black26,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Today',
                              style: TextStyles.textStyles_12.apply(
                                color: ColorStyle.secondryBlack,
                                fontWeightDelta: 1,
                              ),
                            ),
                            Text(
                              '17 April 2021',
                              style: TextStyles.textStyles_12.apply(
                                color: ColorStyle.secondryBlack,
                                fontWeightDelta: 1,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width:double.infinity,
                          height: 1,
                          color: Colors.black26,
                        ),
                        Container(
                          // color: Colors.lightBlue,
                          height: MediaQuery.of(context).size.height,
                          // width:500,
                          child: ListView.builder(
                              padding: EdgeInsets.only(top: 20),
                              shrinkWrap: true,
                              itemCount: 10,
                              // scrollDirection: Axis.horizontal,
                              physics: BouncingScrollPhysics(),
                              itemBuilder: (BuildContext context, int index) {
                                String bg_SecondColor;
                                return Container(
                                  padding: EdgeInsets.only(left: 12, right: 12),
                                  alignment: Alignment.center,
                                  // color: Colors.red,
                                  height: 57,
                                  width: 343,

                                  margin: EdgeInsets.all(6),
                                  // color: Colors.red,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(
                                        ImageStyle.agp,
                                        height: 30,
                                        width: 30,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Costa Coffee',
                                            // controller.listApplyLeave[index],
                                            style: TextStyles.textStyles_12
                                                .apply(
                                                color: ColorStyle.secondryBlack),
                                          ),
                                          Text(
                                            'Food & Drink',
                                            // controller.listApplyLeave[index],
                                            style: TextStyles.textStyles_8
                                                .apply(
                                                color: ColorStyle.secondryBlack),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 40,
                                      ),
                                      Container(
                                    alignment: Alignment.center,
                                    padding: EdgeInsets.only(left: 14, right: 14),
                                    child: Text(
                                      '- \$8.10',
                                      style: TextStyles.textStyles_16
                                          .apply(
                                          color: ColorStyle.secondryBlack),
                                    ),
                                    // width: 70,
                                    // height: 40,
                                  ),
                                      Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        size: 20,
                                        color: Colors.black45,
                                      )

                                    ],
                                  ),

                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.lightBlueAccent.withOpacity(0.1)),
                                );
                              }),
                        ),




                      ],
                    ),
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
