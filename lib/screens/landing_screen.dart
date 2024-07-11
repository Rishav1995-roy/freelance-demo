import 'package:demoapp/widgets/common/dismiss_keyboard.dart';
import 'package:demoapp/widgets/landing_widget.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  TextEditingController searchController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController problemController = TextEditingController();
  TextEditingController testController = TextEditingController();
  TextEditingController consultController = TextEditingController();

  List<bool> status = [true, false, false, false];


  void setStatus(int index) {
    for(int i =0 ; i< status.length; i++) {
      if(i == index) {
        status[i] = true;
      } else {
        status[i] = false;
      }
    }
    setState(() {
      
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return DismissKeyboard(
      child: LandingWidget(
        searchController: searchController,
        nameController: nameController,
        dateController: dateController,
        problemController: problemController,
        testController: testController,
        consultController: consultController,
        setStatus:setStatus,
        status:status,
      )
    );
  }
}