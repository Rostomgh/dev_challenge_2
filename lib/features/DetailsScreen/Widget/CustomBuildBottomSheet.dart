import 'package:dev_challenge_2/core/Theme/AppAssets.dart';
import 'package:dev_challenge_2/core/Theme/AppColors.dart';
import 'package:dev_challenge_2/core/Theme/AppSizes.dart';
import 'package:dev_challenge_2/features/DetailsScreen/Widget/BuildIngred.dart';
import 'package:dev_challenge_2/features/DetailsScreen/Widget/BuildRowStatic.dart';
import 'package:dev_challenge_2/features/DetailsScreen/Widget/CustomButton.dart';
import 'package:dev_challenge_2/features/DetailsScreen/Widget/CustomCreator.dart';
import 'package:dev_challenge_2/features/DetailsScreen/Widget/StartBottomSheet.dart';
import 'package:dev_challenge_2/features/Search%20Screen/Widget/BuildPopular.dart';
import 'package:dev_challenge_2/features/home/Widget/CustomNameSection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({super.key});

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  String buttonText = 'Add to cart';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StartBottomSheet(),
          const SizedBox(
            height: AppSizes.height,
          ),
          const BuildRowStatic(),
          const SizedBox(
            height: AppSizes.hbtween,
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: CustomNameSection(
              NSection: 'Ingredients',
              tit: 'Add All to Cart',
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          const BuildIngred(),
          SizedBox(
            height: 24.h,
          ),
          CustomButton(
            colorC: AppColors.primaryColor,
            textB: buttonText,
            onpress: () {
              setState(() {
                buttonText = 'Done';
              });
            },
          ),
          SizedBox(height: 47.h),
          const CustomNameSection(
            NSection: 'Creator',
          ),
          const CustomCreator(
            NCreator: 'Natalia Luca',
            Mdesc: 'I\'m the author and recipe developer.',
            picCreator: AppAssets.profile,
          ),
          SizedBox(height: 24.h),
          const CustomNameSection(
            NSection: 'Recipes',
            tit: 'See All',
          ),
          SizedBox(height: 12.h),
          BuildPopular(),
        ],
      ),
    );
  }
}
