import 'package:dev_challenge_2/core/Theme/AppAssets.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsState();
}

class _DetailsState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          Image(
            image: AssetImage(
              AppAssets.details,
            ),
          ),
          Container(
            height: double.infinity,
            

          )
        ]),
      ),
    );
  }
}
