import 'package:dev_challenge_2/core/Theme/AppAssets.dart';
import 'package:dev_challenge_2/core/Ui/Animation/BottomSheet.dart';
import 'package:dev_challenge_2/features/DetailsScreen/Widget/CustomBuildBottomSheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsState();
}

class _DetailsState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
          Image(
            image: AssetImage(
              AppAssets.details,
            ),
          ),
          Positioned.fill(
            
            
            child: MyDraggableSheet(child:CustomBottomSheet() ))
        
        ]),
      ),
    );
  }
}
