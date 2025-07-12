import 'package:cms/app/presentation/pages/membership_renewal/widgets/dot.dart';
import 'package:flutter/material.dart';

class Benefits extends StatelessWidget {
  final String benefiits;
  const Benefits({super.key, required this.benefiits});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Dot(),
        SizedBox(width: 10),
        Text(benefiits, style: TextStyle(fontSize: 18)),
      ],
    );
  }
}
