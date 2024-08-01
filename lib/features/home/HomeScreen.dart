import 'package:dev_challenge_2/core/Theme/AppColors.dart';
import 'package:dev_challenge_2/core/Theme/AppSizes.dart';
import 'package:dev_challenge_2/features/home/Widget/BuildCategory.dart';
import 'package:dev_challenge_2/features/home/Widget/CustomCategoryContnair.dart';
import 'package:dev_challenge_2/features/home/Widget/CustomNameSection.dart';
import 'package:dev_challenge_2/features/home/Widget/CustomResponsiveGrid.dart';
import 'package:dev_challenge_2/features/home/Widget/StartScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50.h,
          ),
          const StartScreen(),
          const SizedBox(
            height: AppSizes.hbtween,
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text('Featured',
                style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textColor)),
          ),
          const CustomResponsiveGrid(
            title: "Asian white noodle with extra seafood",
            time: '20',
          ),
          const SizedBox(
            height: AppSizes.hbtween,
          ),
          const CustomNameSection(
            tit: 'See All',
            NSection: 'Category',
          ),
          const SizedBox(
            height: AppSizes.hcategory,
          ),
          const BuildCategory() ,
          const CustomNameSection( 
            tit: 'See All',
            NSection: ' Recipes',
          ),

        ],
      ),
    ));
  }
}
