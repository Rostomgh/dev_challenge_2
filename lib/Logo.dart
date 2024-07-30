import 'package:dev_challenge_2/core/Theme/AppColors.dart';
import 'package:dev_challenge_2/core/Ui/CustomButton.dart';
import 'package:flutter/material.dart';

class LogoS extends StatelessWidget {
  const LogoS({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:AppColors.primaryColor,
      body: Column(
        children: [
          const Text('Help your path to health goals with happiness',style: TextStyle(color: AppColors.white,fontSize: 28,fontWeight: FontWeight.w800),),
          CustomButton(onpress: (){},),
          const Text('Create New Account',style: TextStyle(color: AppColors.white,fontSize: 16,fontWeight: FontWeight.w700),),
        ],
      ),
    );
  }
}