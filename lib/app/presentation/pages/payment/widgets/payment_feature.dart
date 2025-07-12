import 'package:flutter/material.dart';

class PaymentFeature extends StatelessWidget {
  final String featureName;
  final Widget icon;
  const PaymentFeature({
    super.key,
    required this.featureName,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        Text(featureName, style: TextStyle(fontSize: 8)),
      ],
    );
  }
}
