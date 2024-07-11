import 'package:demoapp/resource/colors.dart';
import 'package:demoapp/utils/utils.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final double width;
  final double height;
  final String buttonText;
  final Function onPress;

  const ButtonWidget({
    super.key,
    required this.buttonText,
    required this.onPress,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        onPress();
      },
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: AppColors.violetColor,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              blurRadius: 0.8,
              spreadRadius: 0.5,
              offset: const Offset(0, 1),
              color: AppColors.blackColorVariantOne.withOpacity(0.1),
            )
          ]
        ),
        child: Center(
          child: Text(
            buttonText,
            style: Utils.setFontStyle(fontSize: 16, fontWeight: FontWeight.w700, textColor: AppColors.whiteColor),
          ),
        ),
      ),
    );
  }

}