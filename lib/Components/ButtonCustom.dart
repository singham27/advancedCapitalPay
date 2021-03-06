import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:advanced_capital_pay/Views/CryptoScreens/CryptoDashboard.dart';
import 'package:flutter/material.dart';


class ElevatedButtonCustom extends StatelessWidget {
  final Function()? onTap;
  final String? text;
  final Color? colorBG;

  // final Color? colorText;
  final double? width;
  final double? height;
  final double? radiusBorder;
  final Color? colorBorder;
  final TextStyle? textStyle;

  const ElevatedButtonCustom({
    Key? key,
    this.onTap,
    this.text = "Elevated Button",
    this.colorBG = Colors.red,
    // this.colorText = Colors.white,
    this.width = 200,
    this.height = 50,
    this.radiusBorder = 8,
    this.colorBorder = Colors.transparent,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: colorBG,
        fixedSize: Size(width!, height!),
        elevation: 0,
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radiusBorder!),
            side: BorderSide(color: colorBorder!)),
      ),
      child: Text(
        text!,
        textAlign: TextAlign.center,
        style: textStyle!,
      ),
      onPressed: onTap,
    );
  }
}

class GradientButton extends StatelessWidget {
  final double? width;
  final double? height;
  final String? imageName;
  final String? text;
  final Function()? onTap;

  const GradientButton({
    Key? key,
    this.width = 200,
    this.height = 50,
    this.imageName = ImageStyle.gradientSignIn,
    this.text = "GradientButton",
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
          width: width,
          height: height,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(imageName!), fit: BoxFit.fill)),
          child: Text(
            text!,
            style: TextStylesPoppins.textStyles_16.apply(
              color: ColorStyle.primaryWhite,
            ),
          ),
        ),
        onTap: onTap);
  }
}

class GradientButtonWithArrow extends StatelessWidget {
  final double? width;
  final double? height;
  final String? imageName;
  final String? text;
  final Function()? onTap;
  final IconData? icon;

  const GradientButtonWithArrow(
      {Key? key,
      this.width = 200,
      this.height = 50,
      this.imageName = ImageStyle.gradientSignIn,
      this.text = "GradientButtonSkyColor",
      this.onTap,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
          width: width,
          height: height,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(imageName!), fit: BoxFit.fill)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 16,
              ),
              Text(
                text!,
                style: TextStylesPoppins.textStyles_16.apply(
                  color: ColorStyle.primaryWhite,
                ),
              ),
              Icon(
                icon,
                size: 16,
                color: ColorStyle.primaryWhite,
              ),
            ],
          ),
        ),
        onTap: onTap);
  }
}
class GradientButtonWithSendBitcoins  extends StatelessWidget {
  final double? width;
  final double? height;
  final String? imageName;
  final String? text;
  final Function()? onTap;
  final IconData? icon;

  const GradientButtonWithSendBitcoins(
      {Key? key,
        this.width = 200,
        this.height = 50,
        this.imageName = ImageStyle.gradientSignIn,
        this.text = "GradientButtonSkyColor",
        this.onTap,
        this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
          width: width,
          height: height,
          alignment: Alignment.center,
          decoration: BoxDecoration(
                color: ColorStyle.hex('#AED1EB').withOpacity(0.8),
            borderRadius: BorderRadius.circular(10)
          ),
          child:    Text(
            text!,
            style: TextStylesPoppins.textStyles_16.apply(
              color: ColorStyle.primaryWhite,
              fontWeightDelta: 1
            ),
          ),
        ),
        onTap: onTap);
  }
}
class GradientButtonWithSendBitcoin  extends StatelessWidget {
  final double? width;
  final double? height;
  final String? imageName;
  final String? text;
  final Function()? onTap;
  final IconData? icon;

  const GradientButtonWithSendBitcoin(
      {Key? key,
        this.width = 200,
        this.height = 50,
        this.imageName = ImageStyle.gradientSignIn,
        this.text = "GradientButtonSkyColor",
        this.onTap,
        this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
          width: width,
          height: height,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: ColorStyle.hex('#EFDE64').withOpacity(0.8),
              borderRadius: BorderRadius.circular(10)
          ),
          child:    Text(
            text!,
            style: TextStylesPoppins.textStyles_16.apply(
                color: ColorStyle.secondryBlack,
                fontWeightDelta: 1
            ),
          ),
        ),
        onTap: onTap);
  }
}
class GradientButtonWithSendBitcoinn  extends StatelessWidget {
  final double? width;
  final double? height;
  final String? imageName;
  final String? text;
  final Function()? onTap;
  final IconData? icon;

  const GradientButtonWithSendBitcoinn(
      {Key? key,
        this.width = 200,
        this.height = 50,
        this.imageName = ImageStyle.gradientSignIn,
        this.text = "GradientButtonSkyColor",
        this.onTap,
        this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
          width: width,
          height: height,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: ColorStyle.hex('#EFDE64').withOpacity(0.2),
              borderRadius: BorderRadius.circular(10)
          ),
          child:    Text(
            text!,
            style: TextStylesPoppins.textStyles_16.apply(
                color: ColorStyle.secondryBlack,
                fontWeightDelta: 1
            ),
          ),
        ),
        onTap: onTap);
  }
}
class GradientButtonWithSendsBitcoinn  extends StatelessWidget {
  final double? width;
  final double? height;
  final String? imageName;
  final String? text;
  final Function()? onTap;
  final IconData? icon;

  const GradientButtonWithSendsBitcoinn(
      {Key? key,
        this.width = 200,
        this.height = 50,
        this.imageName = ImageStyle.gradientSignIn,
        this.text = "GradientButtonSkyColor",
        this.onTap,
        this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
          width: width,
          height: height,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: ColorStyle.hex('#EFDE64').withOpacity(0.6),
              borderRadius: BorderRadius.circular(10)
          ),
          child:    Text(
            text!,
            style: TextStylesPoppins.textStyles_14.apply(
                color: ColorStyle.secondryBlack,
                fontWeightDelta: 1
            ),
          ),
        ),
        onTap: onTap);
  }
}
class OrdersButtonIsClickedButton  extends StatelessWidget {
  final double? width;
  final double? height;
  final String? imageName;
  final String? text;
  final Function()? onTap;
  final IconData? icon;

  const OrdersButtonIsClickedButton(
      {Key? key,
        this.width = 355,
        this.height = 50,
        this.imageName = ImageStyle.gradientSignIn,
        this.text = "GradientButtonSkyColor",
        this.onTap,
        this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
          width: width,
          height: height,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: ColorStyle.green.withOpacity(.3),
              borderRadius: BorderRadius.circular(40)
          ),
          child:    Text(
            text!,
            style: TextStylesPoppins.textStyles_14.apply(
                color: ColorStyle.primaryWhite,
                fontWeightDelta: 1
            ),
          ),
        ),
        onTap: onTap);
  }
}
class GradientButtonWith extends StatelessWidget {
  final double? width;
  final double? height;
  final String? imageName;
  final String? text;
  final Function()? onTap;
  final IconData? icon;

  const GradientButtonWith(
      {Key? key,
      this.width = 200,
      this.height = 50,
      this.imageName = ImageStyle.gradientSignIn,
      this.text = "GradientButtonSkyColor",
      this.onTap,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: InkWell(
                child: Container(
                  width: width,
                  height: height,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(width: 2, color: ColorStyle.blueSKY)),
                  child: Text(
                    'Cancel',
                    style: TextStylesPoppins.textStyles_16
                        .apply(color: ColorStyle.blueSKY, fontWeightDelta: 1),
                  ),
                ),
                onTap: onTap)),
        SizedBox(
          width: 10,
        ),
        Expanded(
            child: InkWell(
                child: Container(
                  width: width,
                  height: height,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: ColorStyle.blueSKY,
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(width: 1, color: ColorStyle.blueSKY)),
                  child: Text(
                    'Generate OTP',
                    style: TextStylesPoppins.textStyles_16.apply(
                        color: ColorStyle.primaryWhite, fontWeightDelta: 1),
                  ),
                ),
                onTap: onTap)),
      ],
    );
  }
}
class GradientButtonWithBank extends StatelessWidget {
  final double? width;
  final double? height;
  final String? imageName;
  final String? text;
  final Function()? onTap;
  final IconData? icon;

  const GradientButtonWithBank(
      {Key? key,
        this.width = 200,
        this.height = 50,
        this.imageName = ImageStyle.gradientSignIn,
        this.text = "GradientButtonSkyColor",
        this.onTap,
        this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child:  InkWell(
            child: Container(
              width: width,
              height: height,
              alignment: Alignment.center,
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                      width: 2,
                      color: ColorStyle.blueSKY
                  )
              ),
              child: Text(
                'Back to Search',
                style: TextStylesPoppins.textStyles_12.apply(
                    color: ColorStyle.blueSKY,
                    fontWeightDelta: 1
                ),
              ),
            ),
            onTap: onTap)),
        SizedBox(width: 10,),
        Expanded(child:  InkWell(
            child: Container(
              width: width,
              height: height,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: ColorStyle.blueSKY,
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                      width: 1,
                      color: ColorStyle.blueSKY
                  )
              ),
              child: Text(
                'select Bank Details',
                style: TextStylesPoppins.textStyles_12.apply(
                    color: ColorStyle.primaryWhite,
                    fontWeightDelta: 1
                ),
              ),
            ),
            onTap: onTap)),

      ],
    );
  }
}
class GradientButtonWithBanks extends StatelessWidget {
  final double? width;
  final double? height;
  final String? imageName;
  final String? text;
  final Function()? onTap;
  final IconData? icon;

  const GradientButtonWithBanks(
      {Key? key,
        this.width = 200,
        this.height = 50,
        this.imageName = ImageStyle.gradientSignIn,
        this.text = "GradientButtonSkyColor",
        this.onTap,
        this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child:  InkWell(
            child: Container(
              width: width,
              height: height,
              alignment: Alignment.center,
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                      width: 2,
                      color: ColorStyle.blueSKY
                  )
              ),
              child: Text(
                'Back to Help Center',
                style: TextStylesPoppins.textStyles_12.apply(
                    color: ColorStyle.blueSKY,
                    fontWeightDelta: 1
                ),
              ),
            ),
            onTap: onTap)),
        SizedBox(width: 10,),
        Expanded(child:  InkWell(
            child: Container(
              width: width,
              height: height,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: ColorStyle.blueSKY,
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                      width: 1,
                      color: ColorStyle.blueSKY
                  )
              ),
              child: Text(
                'Submit Message',
                style: TextStylesPoppins.textStyles_12.apply(
                    color: ColorStyle.primaryWhite,
                    fontWeightDelta: 1
                ),
              ),
            ),
            onTap: onTap)),

      ],
    );
  }
}
class GradientButtonWithMassage extends StatelessWidget {
  final double? width;
  final double? height;
  final String? imageName;
  final String? text;
  final Function()? onTap;
  final IconData? icon;

  const GradientButtonWithMassage(
      {Key? key,
        this.width = 200,
        this.height = 50,
        this.imageName = ImageStyle.gradientSignIn,
        this.text = "GradientButtonSkyColor",
        this.onTap,
        this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child:  InkWell(
            child: Container(
              width: width,
              height: height,
              alignment: Alignment.center,
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                      width: 2,
                      color: ColorStyle.blueSKY
                  )
              ),
              child: Text(
                'Cancel',
                style: TextStylesPoppins.textStyles_12.apply(
                    color: ColorStyle.blueSKY,
                    fontWeightDelta: 1
                ),
              ),
            ),
            onTap: onTap)),
        SizedBox(width: 10,),
        Expanded(child:  InkWell(
            child: Container(
              width: width,
              height: height,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: ColorStyle.blueSKY,
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                      width: 1,
                      color: ColorStyle.blueSKY
                  )
              ),
              child: Text(
                'Submit Message',
                style: TextStylesPoppins.textStyles_12.apply(
                    color: ColorStyle.primaryWhite,
                    fontWeightDelta: 1
                ),
              ),
            ),
            onTap: onTap)),

      ],
    );
  }
}
class GradientButtonWithContinue extends StatelessWidget {
  final double? width;
  final double? height;
  final String? imageName;
  final String? text;
  final Function()? onTap;
  final IconData? icon;

  const GradientButtonWithContinue(
      {Key? key,
      this.width = 200,
      this.height = 50,
      this.imageName = ImageStyle.gradientSignIn,
      this.text = "GradientButtonSkyColor",
      this.onTap,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
          // width: width,
          height: height,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: ColorStyle.blueSKY),
          child: Text(
            'Continue',
            style: TextStylesPoppins.textStyles_16
                .apply(color: ColorStyle.primaryWhite, fontWeightDelta: 1),
          ),
        ),
        onTap: onTap);
  }
}
class ButtonContinueCancel extends StatelessWidget {
  final String? textFirst;
  final Color? colorBGFirst;
  final Color? colorBorderFirst;
  final TextStyle? textStyleFirst;
  final Function()? onTapFirst;

  final String? textSecond;
  final Color? colorBGSecond;
  final Color? colorBorderSecond;
  final TextStyle? textStyleSecond;
  final Function()? onTapSecond;

  final double radiusBorder;
  final double height;

  const ButtonContinueCancel({
    Key? key,
    this.textFirst = 'First',
    this.colorBGFirst = Colors.red,
    this.colorBorderFirst = Colors.transparent,
    this.textStyleFirst = const TextStyle(color: Colors.yellow),
    this.onTapFirst,
    this.textSecond = 'Second',
    this.colorBGSecond = Colors.transparent,
    this.colorBorderSecond = Colors.red,
    this.radiusBorder = 40,
    this.textStyleSecond = const TextStyle(color: Colors.orange),
    this.onTapSecond,
    this.height = 50,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: ElevatedButtonCustom(
          colorBG: colorBGFirst,
          textStyle: textStyleFirst,
          colorBorder: colorBorderFirst,
          height: height,
          text: textFirst,
          radiusBorder: radiusBorder,
          onTap: onTapFirst,
        )),
        SizedBox(
          width: 10,
        ),
        Expanded(
            child: ElevatedButtonCustom(
              colorBG: colorBGSecond,
              textStyle: textStyleSecond,
              colorBorder: colorBorderSecond,
              text: textSecond,
              height: height,
              radiusBorder: radiusBorder,
              onTap: onTapSecond,
        )),
      ],
    );
  }
}


