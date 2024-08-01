import 'package:dev_challenge_2/features/Search%20Screen/Widget/CustomSerachBar.dart';
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
        title: const Text('Search'),
        
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            CustomSearchBar()
          ]
          
        ),
      )
      );
    
  }
}
