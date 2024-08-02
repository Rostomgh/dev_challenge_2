import 'package:dev_challenge_2/core/Theme/AppAssets.dart';
import 'package:dev_challenge_2/features/DetailsScreen/Widget/CustomContainerIngre.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsState();
}

class _DetailsState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      
      body:Column(
        children: [
          SizedBox(height:159),
          CustomContainerIngred(img: AppAssets.nodle,name: 'nodle',),
        ],
      ),
    );
  }
}
