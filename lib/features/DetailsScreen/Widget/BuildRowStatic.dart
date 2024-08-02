import 'package:dev_challenge_2/core/Theme/AppAssets.dart';
import 'package:dev_challenge_2/core/Theme/AppSizes.dart';
import 'package:dev_challenge_2/features/DetailsScreen/Widget/CustomContainerStatic.dart';
import 'package:flutter/material.dart';

class BuildRowStatic extends StatelessWidget {
  const BuildRowStatic({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(18.0),
      child: Column(
        children: [
          Row(
            children: [
              CustomContainerHealthy(
                static: '65g carbs',
                imgP: AppAssets.carbs,
              ),
              SizedBox(
                width: AppSizes.row,
              ),
              CustomContainerHealthy(
                static: '27g proteins',
                imgP: AppAssets.protien,
              ),
            ],
          ),
          SizedBox(height: AppSizes.height,),
          Row(
            children: [
              CustomContainerHealthy(
                static: '120 Kcal',
                imgP: AppAssets.kcal,
              ),
              SizedBox(
                width: AppSizes.row,
              ),
              CustomContainerHealthy(
                static: '91g fats',
                imgP: AppAssets.fat,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
