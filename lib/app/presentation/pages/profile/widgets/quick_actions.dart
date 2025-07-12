import 'package:cms/app/core/const/quick_actions.dart';
import 'package:flutter/material.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: quickActions.map((e) {
        return Container();
      }).toList(),
    );
  }
}
