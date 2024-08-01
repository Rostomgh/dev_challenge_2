import 'package:dev_challenge_2/core/Theme/AppSizes.dart';
import 'package:dev_challenge_2/features/Search%20Screen/Widget/CustomGridChoice.dart';
import 'package:dev_challenge_2/features/Search%20Screen/Widget/CustomSerachBar.dart';
import 'package:dev_challenge_2/features/home/Widget/BuildCategory.dart';
import 'package:dev_challenge_2/features/home/Widget/CustomNameSection.dart';
import 'package:flutter/material.dart';


class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Search',style: TextStyle(fontWeight: FontWeight.bold),),
        
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            CustomSearchBar(),
            SizedBox(height: AppSizes.height,),
            BuildCategory(),    
             CustomNameSection( 
            tit: 'View All', 
            NSection: ' Recipes',
          ),
          SizedBox(height: AppSizes.height,),
          CustomGridChoice(descp: 'Easy homemade beef burger', name: 'James Spader'),
          ]
          
        ),
      )
      );
    
  }
}
