import 'package:dev_challenge_2/features/home/Widget/CustomResponsiveGrid.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
    body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 40,),
          CustomResponsiveGrid(title:"Asian white noodle with extra seafood" ,)
          
        ],
      ),
    )
    );
  }
}