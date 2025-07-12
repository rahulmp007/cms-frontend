import 'package:cms/app/core/const/app_colors.dart';
import 'package:cms/app/presentation/pages/payment/payment.dart';
import 'package:flutter/material.dart';

class Pricing extends StatelessWidget {
  const Pricing({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 335,
      padding: EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: AppColors.kColorLight.withValues(alpha: 0.4),
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 6,
                  bottom: 6,
                ),
                decoration: ShapeDecoration(
                  color: Colors.green.shade300,
                  shape: const StadiumBorder(),
                ),
                child: const Text(
                  'Most Popular',
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Premium',
                style: TextStyle(
                  color: AppColors.kBlack,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 6,
                  bottom: 6,
                ),
                decoration: ShapeDecoration(
                  color: Colors.lightBlue.withValues(alpha: 0.1),
                  shape: const StadiumBorder(),
                ),
                child: const Text(
                  'Current',
                  style: TextStyle(color: Colors.lightBlue, fontSize: 13),
                ),
              ),
            ],
          ),
          SizedBox(height: 4),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '\$179',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: AppColors.kBlack,
                  ),
                ),
                TextSpan(
                  text: '/year',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF6B7280),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Text("Save \$21 vs monthly", style: TextStyle(color: Colors.green)),
          Row(
            children: [
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 6),
                  Text("All core features", style: TextStyle(fontSize: 16)),
                  SizedBox(height: 6),
                  Text("Priority support", style: TextStyle(fontSize: 16)),
                  SizedBox(height: 6),
                  Text("Premium content", style: TextStyle(fontSize: 16)),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => Payment()));
            },
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.lightBlue.withValues(alpha: 0.6),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Center(
                child: Text(
                  "Select",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
