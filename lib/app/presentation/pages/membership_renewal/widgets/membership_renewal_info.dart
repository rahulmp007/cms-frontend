
import 'package:cms/app/core/const/app_colors.dart';
import 'package:flutter/material.dart';

class MembershipRenewalInfo extends StatelessWidget {
  const MembershipRenewalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.lightBlue,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(18),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Premium Membership",
                style: TextStyle(color: AppColors.kWhite),
              ),
              Container(
                padding: EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 6),
                decoration: ShapeDecoration(
                  color: Colors.orange,
                  shape: const StadiumBorder(),
                ),
                child: const Text(
                  'Expiring Soon',
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
              ),
            ],
          ),
          SizedBox(height: 18),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Member Since",
                      style: TextStyle(fontSize: 14, color: AppColors.kWhite),
                    ),
                    Text(
                      "June 28,2023",
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.kWhite,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Member ID",
                      style: TextStyle(fontSize: 14, color: AppColors.kWhite),
                    ),
                    Text(
                      "PM-24871",
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.kWhite,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Expires On",
                      style: TextStyle(fontSize: 14, color: AppColors.kWhite),
                    ),
                    Text(
                      "June 30, 2025",
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.kWhite,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 18),
          Container(
            height: 50,
            decoration: BoxDecoration(
              color: AppColors.kWhite.withValues(alpha: 0.3),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text(
                "Your membership expires in 2 days",
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.kWhite,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
