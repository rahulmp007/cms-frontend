import 'package:cms/app/core/const/app_colors.dart';
import 'package:flutter/material.dart';

class EnableBankTansfer extends StatelessWidget {
  const EnableBankTansfer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 24, right: 24),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.kColorLight),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Digital Wallets',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Transform.scale(
                scale: 0.8,
                child: Switch(value: false, onChanged: (value) {}),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            'Pay directly from your bank account using a secure transfer.',
            style: TextStyle(color: AppColors.kBlack.withValues(alpha: 0.4)),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
