import 'package:cms/app/core/const/app_colors.dart';
import 'package:flutter/material.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 14, right: 14),
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
                'Premium Membership (1 year)',
                style: TextStyle(fontSize: 12),
              ),
              Text('179.00', style: TextStyle(fontSize: 12)),
            ],
          ),
          Divider(color: AppColors.kColorLight),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Premium Membership (1 year)',
                style: TextStyle(fontSize: 12),
              ),
              Text('179.00', style: TextStyle(fontSize: 12)),
            ],
          ),
          Divider(color: AppColors.kColorLight),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text('179.00', style: TextStyle(fontSize: 12)),
            ],
          ),
          SizedBox(height: 10),
          Container(
            height: 60,
            padding: EdgeInsets.only(left: 20, right: 10),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.kColorLight),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter promo code',
                      hintStyle: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 14,
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(vertical: 12),
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: AppColors.kBlack.withValues(alpha: 0.05),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Center(
                    child: Text(
                      'Apply',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
