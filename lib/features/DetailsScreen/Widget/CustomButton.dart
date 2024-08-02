import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final Function()? onpress;
  final Color colorC;
  final String textB;

  const CustomButton({super.key, this.onpress, required this.colorC, required this.textB});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: onpress,
        color: colorC,
        minWidth: 327,
        height: 50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r).w,
        ),
        child:  Text(
          textB,
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
        ));
  }
}
