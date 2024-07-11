import 'package:demoapp/resource/colors.dart';
import 'package:demoapp/resource/images.dart';
import 'package:demoapp/resource/strings.dart';
import 'package:demoapp/screens/landing_screen.dart';
import 'package:demoapp/utils/extensions_function.dart';
import 'package:demoapp/utils/utils.dart';
import 'package:demoapp/widgets/common/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DemoApp extends StatelessWidget {
  const DemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenSize) {
        return MaterialApp(
          title: 'Demo app',
          debugShowCheckedModeBanner: false,
          color: AppColors.whiteColor,
          home: Scaffold(
            backgroundColor: AppColors.whiteColor,
            body: CustomScrollView(
              slivers: [
                const SliverToBoxAdapter(
                  child: LandingScreen(),
                ),
                SliverToBoxAdapter(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      context.paddingVertical(20),
                      Align(
                        alignment: Alignment.topLeft ,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Text(Strings.ourSpecialist, style: Utils.setFontStyle(fontSize: 16, fontWeight: FontWeight.w600, textColor: AppColors.blackColorVariantTwo),),
                        ),
                      ),
                      context.paddingVertical(20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: GridView.builder(
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, // Number of columns
                            crossAxisSpacing: 10.0, // Horizontal space between grid items
                            mainAxisSpacing: 10.0, // Vertical space between grid items
                            childAspectRatio: 0.65, // Aspect ratio of each grid item
                          ), 
                          itemCount: 4,
                          itemBuilder: (_, index) {
                            return Stack(
                              children: [
                                Container(
                                  width: context.getWidth(),
                                  margin: const EdgeInsets.only(bottom: 15),
                                  decoration: BoxDecoration(
                                    color: AppColors.whiteColorVariantOne,
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
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 20,
                                          vertical: 10,
                                        ),
                                        child: Image.asset(
                                          Images.doctorImages[index],
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      Text(
                                        Strings.doctorName,
                                        style: Utils.setFontStyle(fontSize: 14, fontWeight: FontWeight.w700, textColor: AppColors.blackColorVariantOne),
                                      ),
                                      context.paddingVertical(5),
                                      Text(
                                        Strings.doctorProfession,
                                        style: Utils.setFontStyle(fontSize: 13, fontWeight: FontWeight.w400, textColor: AppColors.blackColorVariantOne),
                                      ),
                                      context.paddingVertical(10),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: ButtonWidget(buttonText: Strings.book, onPress: () {}, width: 60, height: 30,),
                                )
                              ],
                            );
                          },
                        ),
                      ),
                      context.paddingVertical(30),
                      Image.asset(Images.addressBlock, width: context.getWidth(),height: 200, fit: BoxFit.fitWidth,),
                      context.paddingVertical(100),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

}