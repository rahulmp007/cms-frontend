import 'package:cms/app/core/const/app_colors.dart';
import 'package:flutter/material.dart';

class DigitalWallets extends StatelessWidget {
  const DigitalWallets({super.key});

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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Digital Wallets',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 10,
                  bottom: 10,
                ),
                decoration: BoxDecoration(
                  color: AppColors.kBlack,
                  border: Border.all(color: AppColors.kColorLight),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'Apple Pay',
                  style: TextStyle(color: AppColors.kWhite),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 10,
                  bottom: 10,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.kColorLight),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text('Google Pay '),
              ),
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
