import 'package:dev_challenge_2/core/Theme/AppColors.dart';
import 'package:dev_challenge_2/core/Theme/AppSizes.dart';
import 'package:dev_challenge_2/core/Ui/Animation/TransitionAnimationRoute.dart';
import 'package:dev_challenge_2/core/Ui/CustomButton.dart';
import 'package:dev_challenge_2/features/home/HomeScreen.dart';
import 'package:flutter/material.dart';

class LogoS extends StatelessWidget {
  const LogoS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Help your path to health goals with happiness',
            style: TextStyle(
                color: AppColors.white,
                fontSize: 25,
                fontWeight: FontWeight.w800),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: AppSizes.hbtween,
          ),
          CustomButton(
            onpress: () {
              Navigator.pushReplacement(
                context,
                FadeSlidePageTransition(page: const HomeScreen()),
              );
            },
          ),
          const SizedBox(
            height: AppSizes.height,
          ),
          const Text(
            'Create New Account',
            style: TextStyle(
                color: AppColors.white,
                fontSize: 16,
                fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
