import 'package:dev_challenge_2/core/Theme/AppAssets.dart';
import 'package:dev_challenge_2/core/Theme/AppSizes.dart';
import 'package:dev_challenge_2/features/Search%20Screen/Widget/CustomMiniC.dart';
import 'package:flutter/material.dart';

class BuildPopular extends StatelessWidget {
  const BuildPopular({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(14.0),
      child: Row(
        children: [
          CustomMiniC(descPlat: 'Egg & Avo...',NPlat:AppAssets.plat1 ,),
          SizedBox(width: AppSizes.height,),
          CustomMiniC(descPlat: 'Bowl of r...',NPlat:AppAssets.plat2 ,),
          SizedBox(width: AppSizes.height,),
          CustomMiniC(descPlat: 'Chicken S...',NPlat:AppAssets.plat3 ,),
        ],
      ),
    );
  }
}
