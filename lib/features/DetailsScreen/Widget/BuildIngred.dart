import 'package:dev_challenge_2/core/Theme/AppAssets.dart';
import 'package:dev_challenge_2/core/Theme/AppSizes.dart';
import 'package:dev_challenge_2/features/DetailsScreen/Widget/CustomContainerIngre.dart';
import 'package:flutter/material.dart';

class BuildIngred extends StatelessWidget {
  const BuildIngred({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomContainerIngred(
          img: AppAssets.nodle,
          name: 'TorChips',
        ),
        SizedBox(height: AppSizes.ten),
        CustomContainerIngred(
          img: AppAssets.nodle,
          name: 'Avocado',
        ),
        SizedBox(height: AppSizes.ten),
        CustomContainerIngred(
          img: AppAssets.nodle,
          name: 'Cabbage',
        ),
        SizedBox(height: AppSizes.ten),
        CustomContainerIngred(
          img: AppAssets.nodle,
          name: 'Peanuts',
        ),
        SizedBox(height: AppSizes.ten),
        CustomContainerIngred(
          img: AppAssets.nodle,
          name: 'ROnions',
        ),
        ],
    );
  }
}
