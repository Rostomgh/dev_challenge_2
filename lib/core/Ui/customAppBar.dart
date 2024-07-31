import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String headN;
  const CustomAppBar({super.key, required this.headN});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(headN),
    );
  }
}
