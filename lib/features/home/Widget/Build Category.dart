import 'package:dev_challenge_2/core/Theme/AppColors.dart';
import 'package:dev_challenge_2/core/Theme/AppSizes.dart';
import 'package:dev_challenge_2/features/home/Widget/CustomCategoryContnair.dart';
import 'package:flutter/material.dart';

class BuildCategory extends StatelessWidget {
  const BuildCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomCategoryC(
          category: 'Breakfast',
          clr: AppColors.primaryColor,
          clrtext: AppColors.white,
        ),
        SizedBox(width: AppSizes.hcategory,),
        CustomCategoryC(
          category: 'Lunch',
          clr: AppColors.Category,
          clrtext: AppColors.textColor,
        ),
        SizedBox(width: AppSizes.hcategory,),
        CustomCategoryC(
          category: 'Dinner',
          clr: AppColors.Category,
          clrtext: AppColors.textColor,
        ),
      ],
    );
  }
}
