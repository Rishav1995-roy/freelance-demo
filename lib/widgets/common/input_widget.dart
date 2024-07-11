import 'package:demoapp/resource/colors.dart';
import 'package:demoapp/resource/images.dart';
import 'package:demoapp/utils/extensions_function.dart';
import 'package:demoapp/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputWidget extends StatelessWidget {
  final String hintText;
  final TextInputAction? textInputAction;
  final Function onSubmitFunc;
  final TextCapitalization textCapitalization;
  final bool isEditable;
  final TextInputType? keyboard;
  final TextEditingController controller;
  final List<TextInputFormatter> formatters;
  final Function onPress;
  final bool showIcon;
  final double marginValue;


  const InputWidget({
    super.key,
    required this.hintText,
    required this.textInputAction,
    required this.controller,
    required this.formatters,
    required this.isEditable,
    required this.keyboard,
    required this.onPress,
    required this.onSubmitFunc,
    required this.textCapitalization,
    required this.showIcon,
    required this.marginValue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.getPercentWidth(0.85),
      margin: EdgeInsets.symmetric(horizontal: marginValue),
      decoration: BoxDecoration(
        color: AppColors.whiteColorVariantOne,
        borderRadius: BorderRadius.circular(30),
        boxShadow: showIcon ? null : [
          BoxShadow(
            blurRadius: 0.8,
            spreadRadius: 0.5,
            offset: const Offset(0, 1),
            color: AppColors.blackColorVariantOne.withOpacity(0.1),
          )
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: isEditable
                ? null 
                : () {
                  onPress();
                },
              child: TextFormField(
                controller: controller,
                enabled: isEditable,
                onFieldSubmitted: (val) {
                  onSubmitFunc();
                },
                inputFormatters: formatters,
                style: Utils.setFontStyle(fontSize: 18, fontWeight: FontWeight.w600, textColor: AppColors.blackColorVariantOne,),
                textCapitalization: textCapitalization,
                textInputAction: textInputAction,
                cursorColor: AppColors.blackColorVariantOne,
                cursorHeight: 20,
                keyboardType: keyboard,
                textAlign: TextAlign.left,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  fillColor: null,
                  filled: false,
                  border: InputBorder.none,
                  hintText: hintText,
                  contentPadding: const EdgeInsets.only(
                    bottom: 12,
                    left: 20,
                    right: 10,
                  ),
                  hintStyle: Utils.setFontStyle(
                    fontSize: 16, 
                    fontWeight: FontWeight.w600, 
                    textColor: AppColors.blackColorVariantOne,
                  )
                ),
              ),
            ),
          ),
          if(showIcon)...[
            Image.asset(Images.search, width: 25, height: 25,),
            context.paddingHorizontal(20),
          ],
        ],
      ),
    );
  }

}