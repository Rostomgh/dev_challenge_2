import 'package:dev_challenge_2/core/Theme/AppAssets.dart';
import 'package:dev_challenge_2/core/Theme/AppSizes.dart';
import 'package:dev_challenge_2/core/Ui/Animation/BottomSheet.dart';
import 'package:dev_challenge_2/features/DetailsScreen/Widget/CustomBuildBottomSheet.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsState();
}

class _DetailsState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              AppAssets.details,
              fit: BoxFit.cover, 
            ),
          ),
          // Back button
          Positioned(
            top: 40.0, 
            left: 20.0, 
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black), 
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          // Bottom sheet
          const Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: AppSizes.bottomSheetHeight, 
              child: MyDraggableSheet(
                child: CustomBottomSheet(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
