import 'package:cms/app/presentation/shared/widgets/common_app_bar.dart';
import 'package:flutter/material.dart';

class BaseWidget extends StatelessWidget {
  final Widget child;
  final String titleText;
  final Color color;
  final bool showLeading;
  final bool showTrailing;

  const BaseWidget({
    super.key,
    required this.child,
    required this.color,
    required this.titleText,
    required this.showLeading,
    required this.showTrailing,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: Column(
        children: [
          SizedBox(height: 30),
          CommonAppBar(
            titleText: titleText,
            appBarColor: color,
            showLeading: showLeading,
            showTrailing: showTrailing,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}
