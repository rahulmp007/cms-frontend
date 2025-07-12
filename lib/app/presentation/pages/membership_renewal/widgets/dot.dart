import 'package:cms/app/core/const/app_colors.dart';
import 'package:flutter/material.dart';

class Dot extends StatelessWidget {
  const Dot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8,
      width: 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.kBlack,
      ),
    );
  }
}
