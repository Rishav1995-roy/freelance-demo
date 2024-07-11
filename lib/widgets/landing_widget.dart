import 'package:demoapp/resource/colors.dart';
import 'package:demoapp/resource/images.dart';
import 'package:demoapp/resource/strings.dart';
import 'package:demoapp/utils/extensions_function.dart';
import 'package:demoapp/utils/regex.dart';
import 'package:demoapp/utils/utils.dart';
import 'package:demoapp/widgets/common/background_widget.dart';
import 'package:demoapp/widgets/common/button_widget.dart';
import 'package:demoapp/widgets/common/input_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LandingWidget extends StatelessWidget {
  final TextEditingController searchController;
  final TextEditingController nameController;
  final TextEditingController dateController;
  final TextEditingController problemController;
  final TextEditingController testController;
  final TextEditingController consultController;
  final List<bool> status;
  final Function setStatus;

  const LandingWidget({
    super.key,
    required this.searchController,
    required this.consultController,
    required this.dateController,
    required this.nameController,
    required this.problemController,
    required this.testController,
    required this.setStatus,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.getWidth(),
      color: AppColors.whiteColor,
      child: Stack (
        children: [
          CustomPaint(
            size: Size(context.getWidth(), context.getPercentHeight(0.4)), 
            foregroundPainter: UpperVioletClipper(),
          ),
          Container(
            margin: EdgeInsets.only(top: context.getPercentHeight(0.65)),
              width: context.getWidth(),
              height: context.getPercentHeight(0.72),
              decoration: BoxDecoration(
                color: AppColors.greenColor,
                borderRadius: const BorderRadius.all(Radius.circular(50)),
              ),
          ),
          Positioned(
            top: 20,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                context.paddingVertical(40),
                Container(
                  width: context.getWidth(),
                  padding: const EdgeInsets.symmetric(horizontal: 25.0,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(Images.userImage, width: 45, height: 45, fit: BoxFit.cover,),
                      context.paddingHorizontal(10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Strings.welcome,
                            style: Utils.setFontStyle(fontSize: 14, fontWeight: FontWeight.w600, textColor: AppColors.whiteColor),
                          ),
                          context.paddingVertical(5),
                          Text(
                            Strings.dummyName,
                            style: Utils.setFontStyle(fontSize: 16, fontWeight: FontWeight.w800, textColor: AppColors.whiteColor),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Image.asset(Images.settings, width: 25, height: 25, fit: BoxFit.cover,),
                    ],
                  ),
                ),
                context.paddingVertical(30),
                InputWidget(
                  hintText: Strings.searchDoctor, 
                  textInputAction: TextInputAction.done, 
                  controller: searchController,  
                  formatters: [
                    FilteringTextInputFormatter.allow(
                      RegExp(Regex.nameRegex),
                    ),
                  ],
                  isEditable: true, 
                  keyboard: TextInputType.text, 
                  onPress: (){}, 
                  onSubmitFunc: (){}, 
                  textCapitalization: TextCapitalization.sentences, 
                  showIcon: true,
                  marginValue: 30,
                ),
                context.paddingVertical(25),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(
                    Strings.appointmentBooking,
                    style: Utils.setFontStyle(fontSize: 16, fontWeight: FontWeight.w800, textColor: AppColors.whiteColor),
                  ),
                ),
                context.paddingVertical(15),
                Container(
                  width: context.getPercentWidth(0.85),
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      width: 0.2,
                      color: AppColors.blackColorVariantOne.withOpacity(0.1)
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InputWidget(
                        hintText: Strings.enterName, 
                        textInputAction: TextInputAction.next, 
                        controller: nameController,  
                        formatters: [
                          FilteringTextInputFormatter.allow(
                            RegExp(Regex.nameRegex),
                          ),
                        ],
                        isEditable: true, 
                        keyboard: TextInputType.text, 
                        onPress: (){}, 
                        onSubmitFunc: (){}, 
                        textCapitalization: TextCapitalization.sentences, 
                        showIcon: false,
                        marginValue: 15,
                      ),
                      context.paddingVertical(20),
                      InputWidget(
                        hintText: Strings.chooseDate, 
                        textInputAction: TextInputAction.next, 
                        controller: dateController,  
                        formatters: [
                          FilteringTextInputFormatter.allow(
                            RegExp(Regex.nameRegex),
                          ),
                        ],
                        isEditable: true, 
                        keyboard: TextInputType.text, 
                        onPress: (){}, 
                        onSubmitFunc: (){}, 
                        textCapitalization: TextCapitalization.sentences, 
                        showIcon: false,
                        marginValue: 15,
                      ),
                      context.paddingVertical(20),
                      InputWidget(
                        hintText: Strings.choseProblem, 
                        textInputAction: TextInputAction.next, 
                        controller: problemController,  
                        formatters: [
                          FilteringTextInputFormatter.allow(
                            RegExp(Regex.nameRegex),
                          ),
                        ],
                        isEditable: true, 
                        keyboard: TextInputType.text, 
                        onPress: (){}, 
                        onSubmitFunc: (){}, 
                        textCapitalization: TextCapitalization.sentences, 
                        showIcon: false,
                        marginValue: 15,
                      ),
                      context.paddingVertical(20),
                      InputWidget(
                        hintText: Strings.chooseTest, 
                        textInputAction: TextInputAction.next, 
                        controller: testController,  
                        formatters: [
                          FilteringTextInputFormatter.allow(
                            RegExp(Regex.nameRegex),
                          ),
                        ],
                        isEditable: true, 
                        keyboard: TextInputType.text, 
                        onPress: (){}, 
                        onSubmitFunc: (){}, 
                        textCapitalization: TextCapitalization.sentences, 
                        showIcon: false,
                        marginValue: 15,
                      ),
                      context.paddingVertical(20),
                      InputWidget(
                        hintText: Strings.chooseConsultation, 
                        textInputAction: TextInputAction.done, 
                        controller: consultController,  
                        formatters: [
                          FilteringTextInputFormatter.allow(
                            RegExp(Regex.nameRegex),
                          ),
                        ],
                        isEditable: true, 
                        keyboard: TextInputType.text, 
                        onPress: (){}, 
                        onSubmitFunc: (){}, 
                        textCapitalization: TextCapitalization.sentences, 
                        showIcon: false,
                        marginValue: 15,
                      ),
                      context.paddingVertical(20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: ButtonWidget(
                          buttonText: Strings.bookAppointment, 
                          onPress: () {}, 
                          width: context.getPercentWidth(0.85),
                          height: 40,
                        ),
                      ),
                    ],
                  ),
                ),
                context.paddingVertical(25),
                Align(
                  alignment: Alignment.topLeft ,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Text("${Strings.choseProblem}s", style: Utils.setFontStyle(fontSize: 16, fontWeight: FontWeight.w600, textColor: AppColors.blackColorVariantTwo),),
                  ),
                ),
                context.paddingVertical(10),
                Container(
                  height: context.getPercentHeight(0.33),
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: context.getPercentWidth(0.85), // Adjust based on the number of items
                    ),
                    child: GridView.builder(
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10.0,
                        crossAxisSpacing: 10.0,
                        childAspectRatio: 1.2, 
                        // Aspect ratio of the grid items
                      ),
                      itemCount: 4, // Number of items
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setStatus(index);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.greenColor,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 1.5,
                                  spreadRadius: 1.5,
                                  offset: const Offset(0, 1),
                                  color: AppColors.blackColorVariantOne.withOpacity(0.1),
                                )
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(Images.problemImages[index], width: 60, height: 70, fit: BoxFit.contain,),
                                      Image.asset(status[index]? Images.active : Images.inactive, width: 20, height: 20, fit: BoxFit.contain,),
                                    ],
                                  ),
                                ),
                                context.paddingVertical(10),
                                Align(alignment: Alignment.center, child: Text(Strings.problemsList[index], style: Utils.setFontStyle(fontSize: 16, fontWeight: FontWeight.w600, textColor: AppColors.blackColorVariantTwo),)),
                                context.paddingVertical(20),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: context.getPercentWidth(0.4),
                  ),
                  child: Image.asset(Images.slider, width: 60, height: 70, fit: BoxFit.contain,),
                ),
                context.paddingVertical(10),
              ],
            ),
          ),
        ],
      ),
    );
  }

}