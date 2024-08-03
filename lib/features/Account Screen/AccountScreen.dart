import 'package:dev_challenge_2/core/Theme/AppAssets.dart';
import 'package:dev_challenge_2/core/Theme/AppSizes.dart';
import 'package:dev_challenge_2/features/DetailsScreen/Widget/CustomCreator.dart';
import 'package:dev_challenge_2/features/home/Widget/CustomNameSection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account',style: TextStyle(
          fontSize: 24.sp,
          fontWeight: FontWeight.w700,
          
        ),),
        actions: const [
          Icon(Icons.settings),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20.h,),
            const CustomCreator(picCreator: AppAssets.profile, NCreator: 'Alena Sabyan', Mdesc: 'Recipe Developer'),
            SizedBox(height: AppSizes.hbtween,),
            CustomNameSection(NSection:'Favorites',tit: 'See All', ),
            
          ]

      ),
    ));
  }
}
